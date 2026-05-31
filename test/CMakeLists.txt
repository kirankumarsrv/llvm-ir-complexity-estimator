# Functional smoke test: extract features from sample.ll and check output
add_custom_target(run_smoke_test
  COMMAND ${CMAKE_BINARY_DIR}/IRComplexityExtractor
          ${CMAKE_SOURCE_DIR}/test/sample.ll
  DEPENDS IRComplexityExtractor
  COMMENT "Running smoke test on sample.ll"
  VERBATIM
)
