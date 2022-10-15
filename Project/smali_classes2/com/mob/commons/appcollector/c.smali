.class Lcom/mob/commons/appcollector/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/mob/commons/appcollector/PackageCollector;


# direct methods
.method constructor <init>(Lcom/mob/commons/appcollector/PackageCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/commons/appcollector/c;->a:Lcom/mob/commons/appcollector/PackageCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/mob/commons/appcollector/c;->a:Lcom/mob/commons/appcollector/PackageCollector;

    invoke-static {v0}, Lcom/mob/commons/appcollector/PackageCollector;->d(Lcom/mob/commons/appcollector/PackageCollector;)V

    const/4 v0, 0x0

    return v0
.end method
