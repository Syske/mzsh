.class synthetic Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->values()[Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;->b:[I

    :try_start_0
    sget-object v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;->b:[I

    sget-object v1, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->NETWORK_ERROR:Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    invoke-virtual {v1}, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;->b:[I

    sget-object v1, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->INNER_ERROR:Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    invoke-virtual {v1}, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    invoke-static {}, Lcom/baidu/platform/comapi/a/d;->values()[Lcom/baidu/platform/comapi/a/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;->a:[I

    :try_start_2
    sget-object v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;->a:[I

    sget-object v1, Lcom/baidu/platform/comapi/a/d;->b:Lcom/baidu/platform/comapi/a/d;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/a/d;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;->a:[I

    sget-object v1, Lcom/baidu/platform/comapi/a/d;->c:Lcom/baidu/platform/comapi/a/d;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/a/d;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;->a:[I

    sget-object v1, Lcom/baidu/platform/comapi/a/d;->d:Lcom/baidu/platform/comapi/a/d;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/a/d;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;->a:[I

    sget-object v1, Lcom/baidu/platform/comapi/a/d;->a:Lcom/baidu/platform/comapi/a/d;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/a/d;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
