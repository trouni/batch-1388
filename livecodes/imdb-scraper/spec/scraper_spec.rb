require_relative "../scraper"

describe "#get_top_5_movie_urls" do
  it "returns an array of the top 5 movie urls" do
    expect(get_top_5_movie_urls).to eq([
      "https://www.imdb.com/title/tt0111161/",
      "https://www.imdb.com/title/tt0068646/",
      "https://www.imdb.com/title/tt0468569/",
      "https://www.imdb.com/title/tt0071562/",
      "https://www.imdb.com/title/tt0050083/"
    ])
  end
end

describe "fetch_movie(url)" do
  it "returns a hash which contains all the information for the movie" do
    url = "https://www.imdb.com/title/tt0468569/"
    expect(fetch_movie(url)).to eq({
      cast: ["Christian Bale", "Heath Ledger", "Aaron Eckhart"],
      director: "Christopher Nolan",
      storyline: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
      title: "The Dark Knight",
      year: 2008
    })
  end
end
