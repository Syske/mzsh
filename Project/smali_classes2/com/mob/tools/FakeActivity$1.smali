.class Lcom/mob/tools/FakeActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/FakeActivity;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/FakeActivity;

.field final synthetic val$forceNewTask:Z


# direct methods
.method constructor <init>(Lcom/mob/tools/FakeActivity;Z)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/mob/tools/FakeActivity$1;->this$0:Lcom/mob/tools/FakeActivity;

    iput-boolean p2, p0, Lcom/mob/tools/FakeActivity$1;->val$forceNewTask:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v5, 0x10000000

    const/4 v4, 0x0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .local v2, "objs":[Ljava/lang/Object;
    aget-object v0, v2, v4

    check-cast v0, Landroid/content/Context;

    .local v0, "cxt":Landroid/content/Context;
    const/4 v3, 0x1

    aget-object v1, v2, v3

    check-cast v1, Landroid/content/Intent;

    .local v1, "i":Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/mob/tools/FakeActivity$1;->val$forceNewTask:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x8000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v4

    :cond_1
    instance-of v3, v0, Landroid/app/Activity;

    if-nez v3, :cond_0

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method
