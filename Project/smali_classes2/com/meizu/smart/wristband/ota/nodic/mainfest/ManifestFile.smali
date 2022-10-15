.class public Lcom/meizu/smart/wristband/ota/nodic/mainfest/ManifestFile;
.super Ljava/lang/Object;
.source "ManifestFile.java"


# instance fields
.field protected manifest:Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getManifest()Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/mainfest/ManifestFile;->manifest:Lcom/meizu/smart/wristband/ota/nodic/mainfest/Manifest;

    return-object v0
.end method
