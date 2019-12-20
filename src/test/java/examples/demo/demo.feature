Feature: test a graphql demo
  Scenario Outline: test a graphql demo
    * text queryString =
    """{
    product(id: <id>) {
    name
    description
    category {
      name
    }
  }}"""
    Given url 'https://demo.getsaleor.com/graphql/'
    And request {query : '#(queryString)'}
    When method post
    Then status 200
    And  match response.data.product.category.name == <expectValue>
    Examples:
      | id                 | expectValue |
      | "UHJvZHVjdDo4Nw==" | 'Footwear'  |
      | "UHJvZHVjdDo3Nw==" | 'Juices'    |


