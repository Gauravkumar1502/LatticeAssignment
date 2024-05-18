export class ResponseDTO {
    constructor(statusCode, message, data = {}) {
        this.statusCode = statusCode;
        this.message = message;
        this.data = data;
    }

    static success(message, data = {}) {
        return new ResponseDTO(200, message, data);
    }

    static created(message, data = {}) {
        return new ResponseDTO(201, message, data);
    }

    static badRequest(message, data = {}) {
        return new ResponseDTO(400, message, data);
    }

    static internalServerError(message, data = {}) {
        return new ResponseDTO(500, message, data);
    }

    static notFound(message, data = {}) {
        return new ResponseDTO(404, message, data);
    }

    static conflict(message, data = {}) {
        return new ResponseDTO(409, message, data);
    }

}
