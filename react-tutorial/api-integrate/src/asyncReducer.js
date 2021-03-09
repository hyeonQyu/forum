export function asyncReducer(state, action) {
    switch (action.type) {
        case 'LOADING':
            return {
                loading: true,
                users: null,
                error: null,
            };

        case 'SUCCESS':
            return {
                loading: false,
                users: action.users,
                error: null,
            };

        case 'ERROR':
            return {
                loading: false,
                users: null,
                error: action.error,
            };

        default:
            throw new Error(`Unhandled action type: ${action.type}`);
    }
}