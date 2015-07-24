import Foundation

class MainScene: CCNode {

    func didLoadFromCCB() {
        
        for i in 0..<10 {
            var piece = CCBReader.load("Piece") as! Piece
            
            var yPos = piece.contentSizeInPoints.height * CGFloat(i)
            piece.position = CGPoint(x: 0, y: yPos)
            piecesNode.addChild(piece)
            pieces.append(piece)
        }
        
    }
    
    
     weak var piecesNode: CCNode!
     var pieces: [Piece] = []
    
}
