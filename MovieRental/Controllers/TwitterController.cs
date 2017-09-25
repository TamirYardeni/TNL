using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TweetSharp;

namespace MovieRental.Controllers
{
    public class TwitterController : Controller
    {
        // GET: Twitter
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult TwitterCallback(string oauth_token, string oauth_verifier)
        {
            var requesttoken = new OAuthRequestToken { Token = oauth_token };
            string key = "8Y1wwVPxhbyIICQ73JlsWZzu8";
            string secret = "aYSjGVY5J0mHCCWxqFwSTpVobq2Ro9PbtAVKOfw4bCSnivwvHg";

            try
            {
                TwitterService service = new TwitterService(key, secret);
                OAuthAccessToken acessToken = service.GetAccessToken(requesttoken, oauth_verifier);
                service.AuthenticateWith(acessToken.Token, acessToken.TokenSecret);
                VerifyCredentialsOptions option = new VerifyCredentialsOptions();
                TwitterUser user = service.VerifyCredentials(option);

                TempData["Name"] = user.Name;
                TempData["userpic"] = user.ProfileImageUrl;

                return Redirect("http://localhost:14623/Twitter");
            }
            catch (Exception)
            {
                throw;
            }
        }

        public ActionResult TwitterAuth()
        {
            string key = "8Y1wwVPxhbyIICQ73JlsWZzu8";
            string secret = "aYSjGVY5J0mHCCWxqFwSTpVobq2Ro9PbtAVKOfw4bCSnivwvHg";
            TwitterService service = new TwitterService(key, secret);
            OAuthRequestToken requestToken = service.GetRequestToken("http://localhost:14623/Twitter/TwitterCallback");
            Uri uri = service.GetAuthenticationUrl(requestToken);

            return Redirect(uri.ToString());
        }
    }
}