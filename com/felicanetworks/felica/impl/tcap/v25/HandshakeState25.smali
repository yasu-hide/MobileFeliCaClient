.class Lcom/felicanetworks/felica/impl/tcap/v25/HandshakeState25;
.super Lcom/felicanetworks/felica/impl/tcap/TCAPState;
.source "HandshakeState25.java"


# static fields
.field private static instance:Lcom/felicanetworks/felica/impl/tcap/v25/HandshakeState25;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/TCAPState;-><init>()V

    .line 61
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/impl/tcap/v25/HandshakeState25;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakeState25;->instance:Lcom/felicanetworks/felica/impl/tcap/v25/HandshakeState25;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakeState25;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakeState25;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakeState25;->instance:Lcom/felicanetworks/felica/impl/tcap/v25/HandshakeState25;

    .line 50
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakeState25;->instance:Lcom/felicanetworks/felica/impl/tcap/v25/HandshakeState25;

    return-object v0
.end method

.method private handleError(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 5
    .param p1, "context"    # Lcom/felicanetworks/felica/impl/tcap/TCAPContext;
    .param p2, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/TCAPException;,
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 243
    .local v0, "emsg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->parseMessages(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    .line 246
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    invoke-virtual {p2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessageNum()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 265
    invoke-static {}, Lcom/felicanetworks/felica/impl/tcap/ErrorState;->getInstance()Lcom/felicanetworks/felica/impl/tcap/ErrorState;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setState(Lcom/felicanetworks/felica/impl/tcap/TCAPState;)V

    .line 267
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/TCAPException;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPException;-><init>(BLjava/lang/String;)V

    throw v3

    .line 248
    :cond_0
    invoke-virtual {p2, v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessage(I)Lcom/felicanetworks/felica/impl/tcap/Message;

    move-result-object v1

    .line 250
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 246
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :pswitch_0
    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;

    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 257
    goto :goto_1

    .line 250
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleHandshake(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 6
    .param p1, "context"    # Lcom/felicanetworks/felica/impl/tcap/TCAPContext;
    .param p2, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/TCAPException;,
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->parseMessages(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    .line 183
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    invoke-virtual {p2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessageNum()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 215
    invoke-static {}, Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;->getInstance()Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setState(Lcom/felicanetworks/felica/impl/tcap/TCAPState;)V

    .line 216
    return-void

    .line 185
    :cond_0
    invoke-virtual {p2, v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessage(I)Lcom/felicanetworks/felica/impl/tcap/Message;

    move-result-object v1

    .line 188
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getStopFlag()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 191
    const/4 v4, 0x1

    .line 192
    const-string v5, "Interrupted."

    .line 190
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v3

    .line 195
    :cond_1
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v3

    const/16 v4, 0x81

    if-ne v3, v4, :cond_3

    .line 197
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getSession()Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    move-result-object v3

    check-cast v3, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->getFeatureList()Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;

    move-result-object v0

    .local v0, "featureList":Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;
    move-object v3, v1

    .line 200
    check-cast v3, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->getVersion()I

    move-result v4

    move-object v3, v1

    .line 201
    check-cast v3, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->getOptionList()Ljava/util/Vector;

    move-result-object v3

    .line 200
    invoke-virtual {v0, v4, v3}, Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;->query(ILjava/util/Vector;)Lcom/felicanetworks/felica/impl/tcap/v25/Feature;

    move-result-object v3

    if-nez v3, :cond_2

    .line 204
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 205
    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 204
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v3

    .line 208
    :cond_2
    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;

    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->getVersion()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setVersion(I)V

    .line 183
    .end local v0    # "featureList":Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doExecution(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;)V
    .locals 8
    .param p1, "context"    # Lcom/felicanetworks/felica/impl/tcap/TCAPContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/TCAPException;,
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/16 v6, -0x80

    const/4 v5, 0x0

    .line 74
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentRequest()Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;

    move-result-object v2

    .line 77
    .local v2, "request":Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->parse()V

    .line 80
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->getCookie()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setCookie(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v3

    .line 86
    .local v3, "response":Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;
    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->reset()V

    .line 89
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCookie()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->setCookie(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->getPacketNum()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 94
    invoke-virtual {v2, v5}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->getPacket(I)Lcom/felicanetworks/felica/impl/tcap/Packet;

    move-result-object v1

    .line 96
    .local v1, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getSubProtocolType()B

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 112
    :pswitch_0
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;

    invoke-direct {v4, v6}, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;-><init>(B)V

    throw v4

    .line 99
    :pswitch_1
    invoke-direct {p0, p1, v1}, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakeState25;->handleHandshake(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 116
    :goto_0
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getStopFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 120
    const-string v5, "Interrupted."

    .line 118
    invoke-direct {v4, v7, v5}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v4

    .line 105
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakeState25;->handleError(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getSession()Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->getAgent()Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    move-result-object v0

    .line 126
    .local v0, "agent":Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->doTCAPTransaction(Ljava/lang/String;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;)V

    .line 154
    .end local v0    # "agent":Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;
    :goto_1
    return-void

    .line 130
    .end local v1    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    :cond_1
    invoke-virtual {v2, v5}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->getPacket(I)Lcom/felicanetworks/felica/impl/tcap/Packet;

    move-result-object v1

    .line 132
    .restart local v1    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getSubProtocolType()B

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 148
    :pswitch_3
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;

    invoke-direct {v4, v6}, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;-><init>(B)V

    throw v4

    .line 135
    :pswitch_4
    invoke-direct {p0, p1, v1}, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakeState25;->handleHandshake(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 152
    :goto_2
    invoke-virtual {v2, v5}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->removePacket(I)V

    goto :goto_1

    .line 141
    :pswitch_5
    invoke-direct {p0, p1, v1}, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakeState25;->handleError(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    goto :goto_2

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 132
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
