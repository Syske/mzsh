.class Lcom/mob/commons/iosbridge/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mob/commons/iosbridge/UDPServer;


# direct methods
.method constructor <init>(Lcom/mob/commons/iosbridge/UDPServer;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/commons/iosbridge/a;->a:Lcom/mob/commons/iosbridge/UDPServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mob/commons/iosbridge/a;->a:Lcom/mob/commons/iosbridge/UDPServer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mob/commons/iosbridge/UDPServer;->a(Lcom/mob/commons/iosbridge/UDPServer;Z)Z

    iget-object v0, p0, Lcom/mob/commons/iosbridge/a;->a:Lcom/mob/commons/iosbridge/UDPServer;

    invoke-static {v0}, Lcom/mob/commons/iosbridge/UDPServer;->a(Lcom/mob/commons/iosbridge/UDPServer;)V

    return-void
.end method
