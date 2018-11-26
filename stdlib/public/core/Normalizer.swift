
enum NormalizationResult {
  struct SucessResult {
    var amountFilled: Int
    var nextReadIndex: String.Index
  }
  case outputBufferTooSmall(Int) // The size needed to normalize the rest of the string
  case success(SuccessResult)
}

//A:
func normalize(_ string: String, startPosition: String.Index, into output: UnsafeMutableBufferPointer<UInt8>) -> NormalizationResult
//B:
func normalize(_ string: Substring, into output: UnsafeMutableBufferPointer<UInt8>) -> NormalizationResult