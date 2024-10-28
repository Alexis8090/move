module dmail_mail::test {
    use std::signer;
    use std::string::{String};
    use aptos_framework::event;

    #[event]
    struct SendMailEvent has drop, store {
        from: address,
        to: String,
        path: String,
    }

    public entry fun send_msg(account: signer, to: String, path: String) {
        let from = signer::address_of(&account);
        event::emit(SendMailEvent { from, to, path});
    }
}
