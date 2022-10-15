.class public Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;
.super Ljava/lang/Object;
.source "WechatCityServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Address"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;->code:Ljava/lang/String;

    .line 207
    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer$Address;->value:Ljava/lang/String;

    .line 208
    return-void
.end method
