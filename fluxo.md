'''mermaid
graph LR
    subgraph ERP_Protheus
        A[ERP Protheus]
    end

    subgraph Middleware_Mensageria_EventBus
        B[Middleware (Mensageria / Event Bus)]
    end

    subgraph Microserviços_de_Integração
        C[Microserviço 1]
        D[Microserviço 2]
        E[...]
    end

    subgraph API_do_Cliente_A
        F[API do Cliente A]
    end

    A -->|Eventos/Mensagens| B
    B -->|Mensagens| C
    B -->|Mensagens| D
    B -->|Mensagens| E

    C -->|Requisição/Resposta (HTTPS)| F
    D -->|Requisição/Resposta (HTTPS)| F
    E -->|Requisição/Resposta (HTTPS)| F

    F -->|Resposta (HTTPS)| C
    F -->|Resposta (HTTPS)| D
    F -->|Resposta (HTTPS)| E

    style A fill:#f9f,stroke:#333,stroke-width:2px
    style F fill:#ccf,stroke:#333,stroke-width:2px
    style B fill:#e6e6fa,stroke:#333,stroke-width:2px
    style C fill:#f0fff0,stroke:#333,stroke-width:2px
    style D fill:#f0fff0,stroke:#333,stroke-width:2px
    style E fill:#f0fff0,stroke:#333,stroke-width:2px

    classDef default stroke:#333,stroke-width:1px,color:#000

    linkStyle 0,1,2,3 stroke-width:2px,stroke:#555
    linkStyle 4,5,6,7,8,9 stroke-width:1.5px,stroke:#777,stroke-dasharray: 5 5
