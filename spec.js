var spec = {
  "openapi": "3.0.1",
  "info": {
    "title": "API V1",
    "version": "v1"
  },
  "paths": {
    "/api/v1/items": {
      "get": {
        "summary": "list items",
        "responses": {
          "200": {
            "description": "successful"
          }
        }
      },
      "post": {
        "summary": "create item",
        "responses": {
          "200": {
            "description": "successful"
          }
        }
      }
    },
    "/api/v1/items/{id}/edit": {
      "parameters": [
        {
          "name": "id",
          "in": "path",
          "description": "id",
          "required": true,
          "schema": {
            "type": "string"
          }
        }
      ],
      "get": {
        "summary": "edit item",
        "responses": {
          "200": {
            "description": "successful"
          }
        }
      }
    },
    "/api/v1/items/{id}": {
      "parameters": [
        {
          "name": "id",
          "in": "path",
          "description": "id",
          "required": true,
          "schema": {
            "type": "string"
          }
        }
      ],
      "get": {
        "summary": "show item",
        "responses": {
          "200": {
            "description": "successful"
          }
        }
      },
      "patch": {
        "summary": "update item",
        "responses": {
          "200": {
            "description": "successful"
          }
        }
      },
      "put": {
        "summary": "update item",
        "responses": {
          "200": {
            "description": "successful"
          }
        }
      },
      "delete": {
        "summary": "delete item",
        "responses": {
          "200": {
            "description": "successful"
          }
        }
      }
    },
    "/api/v1/reserveds": {
      "get": {
        "summary": "list reserveds",
        "responses": {
          "200": {
            "description": "successful"
          }
        }
      },
      "post": {
        "summary": "create reserved",
        "responses": {
          "200": {
            "description": "successful"
          }
        }
      }
    },
    "/api/v1/reserveds/{id}/edit": {
      "parameters": [
        {
          "name": "id",
          "in": "path",
          "description": "id",
          "required": true,
          "schema": {
            "type": "string"
          }
        }
      ],
      "get": {
        "summary": "edit reserved",
        "responses": {
          "200": {
            "description": "successful"
          }
        }
      }
    },
    "/api/v1/reserveds/{id}": {
      "parameters": [
        {
          "name": "id",
          "in": "path",
          "description": "id",
          "required": true,
          "schema": {
            "type": "string"
          }
        }
      ],
      "get": {
        "summary": "show reserved",
        "responses": {
          "200": {
            "description": "successful"
          }
        }
      },
      "patch": {
        "summary": "update reserved",
        "responses": {
          "200": {
            "description": "successful"
          }
        }
      },
      "put": {
        "summary": "update reserved",
        "responses": {
          "200": {
            "description": "successful"
          }
        }
      },
      "delete": {
        "summary": "delete reserved",
        "responses": {
          "200": {
            "description": "successful"
          }
        }
      }
    }
  },
  "servers": [
    {
      "url": "https://{defaultHost}",
      "variables": {
        "defaultHost": {
          "default": "https://cryptic-anchorage-52984.herokuapp.com/"
        }
      }
    }
  ]
}