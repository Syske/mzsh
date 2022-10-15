.class public Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "FlymeWebviewActivity.java"


# instance fields
.field private callBackUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private resultString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 22
    const-string v0, "https://xxx.meizu.com"

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->callBackUrl:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://login.flyme.cn/authorize/cert.html?service=meizu_band&appuri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->callBackUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&clientId=mLrSaUhEF2W8ehLGSOlZ&clientSecret=QfVHclFIZ8I9P1g4PQ4BIll1b9ujfz&scope=basic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->resultString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->callBackUrl:Ljava/lang/String;

    return-object v0
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->resultString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 94
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f0e009f

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->mWebView:Landroid/webkit/WebView;

    .line 40
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->initView()V

    .line 30
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->initData()V

    .line 31
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 98
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 100
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/FlymeWebviewActivity;->setContentView(I)V

    .line 36
    return-void
.end method
