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
        private static string key = "8Y1wwVPxhbyIICQ73JlsWZzu8";
        private static string secret = "aYSjGVY5J0mHCCWxqFwSTpVobq2Ro9PbtAVKOfw4bCSnivwvHg";
        private static string access_token = "910513747399266304-oSbBPqz4naZT2cEetLG7V7CvDFfO2YV";
        private static string access_token_secret = "XQMfF6pfgTLKXFnq4QBkKfPEqQjuOANbnERDmTSAM8TrQ";

        TwitterService service = new TwitterService(key, secret, access_token, access_token_secret);

        // GET: Twitter
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult TwitterCallback(string oauth_token, string oauth_verifier)
        {
            var requesttoken = new OAuthRequestToken { Token = oauth_token };
            try
            {
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
            OAuthRequestToken requestToken = service.GetRequestToken("http://localhost:14623/Twitter/TwitterCallback");
            Uri uri = service.GetAuthenticationUrl(requestToken);

            return Redirect(uri.ToString());
        }

        public ActionResult TwitterPost(string TeewtText)
        {
            service.SendTweet(new SendTweetOptions { Status = TeewtText } , (tweet, response) => { });

            TwitterUser user = service.VerifyCredentials(new VerifyCredentialsOptions());

            TempData["Name"] = user.Name;
            TempData["userpic"] = user.ProfileImageUrl;

            return Redirect("http://localhost:14623/Twitter");
        }
    }
}