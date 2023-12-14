import Joi from "joi";

const createHistoryValidation = Joi.object({
    date_time: Joi.string().max(100).required(),
    portion: Joi.number().required(),
    feeder_id: Joi.string().required(),
});

const getHistoryValidation = Joi.string().required();

export { createHistoryValidation, getHistoryValidation };
