.class Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "FlymeWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 86
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 54
    if-eqz p2, :cond_1

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;

    invoke-static {v6}, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 56
    :try_start_0
    const-string v6, "utf-8"

    invoke-static {p2, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "mytext2":Ljava/lang/String;
    const-string v6, "decode"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 59
    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 60
    .local v4, "pos":I
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "response":Ljava/lang/String;
    const-string v6, "json = "

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-class v6, Lcom/meizu/smart/wristband/models/newwork/response/Flymedata;

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/models/newwork/response/Flymedata;

    .line 63
    .local v1, "flyme":Lcom/meizu/smart/wristband/models/newwork/response/Flymedata;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 64
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "name"

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/newwork/response/Flymedata;->getNickname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v6, "user_id"

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/newwork/response/Flymedata;->getUser_id()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    const-string v6, "icon"

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/newwork/response/Flymedata;->getIcon()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v2}, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 68
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->finish()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "flyme":Lcom/meizu/smart/wristband/models/newwork/response/Flymedata;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mytext2":Ljava/lang/String;
    .end local v4    # "pos":I
    .end local v5    # "response":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    .line 76
    :goto_1
    return v6

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method
