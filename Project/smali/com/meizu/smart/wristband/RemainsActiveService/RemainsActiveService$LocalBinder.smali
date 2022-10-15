.class public Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService$LocalBinder;
.super Landroid/os/Binder;
.source "RemainsActiveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;


# direct methods
.method public constructor <init>(Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService$LocalBinder;->this$0:Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public getService()Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService$LocalBinder;->this$0:Lcom/meizu/smart/wristband/RemainsActiveService/RemainsActiveService;

    return-object v0
.end method
