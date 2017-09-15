﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MovieRental.Models
{
    public class Genre
    {
        public int GenreId { get; set; }
        public string Name { get; set; }
        public List<Movie> Movies { get; set; }
    }
}