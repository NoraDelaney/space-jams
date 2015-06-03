require_relative "../../albums.rb"

describe Album do
  describe "initialize" do
    context "when initializing album" do

      let (:album) {album = Album.new("0wL14x2cSMyqyZHGv8PNP", "Space Jams", "Tony Wrecks")}

      it "has an id" do
        expect(album.id).to eq("0wL14x2cSMyqyZHGv8PNP")
      end

      it "has a title" do
        expect(album.title).to eq("Space Jams")
      end

      it "has an artist" do
        expect(album.artists).to eq("Tony Wrecks")
     end
   end
 end
end
