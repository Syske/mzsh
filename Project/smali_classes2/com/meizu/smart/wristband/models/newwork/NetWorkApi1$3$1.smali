.class Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3$1;
.super Lcom/loopj/android/http/TextHttpResponseHandler;
.source "NetWorkApi1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3$1;->this$0:Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;

    iput-object p2, p0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3$1;->val$subscriber:Lrx/Subscriber;

    new-instance v1, Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3$1;->this$0:Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;

    iget-object v2, v2, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3;->val$context:Landroid/content/Context;

    const v3, 0x7f0801f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 149
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1$3$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 155
    return-void
.end method
