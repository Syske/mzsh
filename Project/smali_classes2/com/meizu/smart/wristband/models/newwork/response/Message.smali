.class public Lcom/meizu/smart/wristband/models/newwork/response/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private CHmsg:Ljava/lang/String;

.field private ENmsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCHmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Message;->CHmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getENmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Message;->ENmsg:Ljava/lang/String;

    return-object v0
.end method

.method public setCHmsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "cHmsg"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Message;->CHmsg:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setENmsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "eNmsg"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Message;->ENmsg:Ljava/lang/String;

    .line 24
    return-void
.end method
