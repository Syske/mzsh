.class public Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;
.super Landroid/view/SurfaceView;
.source "MySurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private camera_id:I

.field private final context:Landroid/app/Activity;

.field holder:Landroid/view/SurfaceHolder;

.field private jpeg:Landroid/hardware/Camera$PictureCallback;

.field myCamera:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "carema_id"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->jpeg:Landroid/hardware/Camera$PictureCallback;

    .line 123
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->context:Landroid/app/Activity;

    .line 124
    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->camera_id:I

    .line 125
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->holder:Landroid/view/SurfaceHolder;

    .line 126
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 127
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;

    .prologue
    .line 26
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->camera_id:I

    return v0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "in"    # Landroid/graphics/Bitmap;
    .param p1, "angle"    # I

    .prologue
    const/4 v1, 0x0

    .line 211
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 212
    .local v5, "mat":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 213
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 214
    .local v7, "out":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    return-object v7
.end method

.method private setCameraDisplayOrientation(Landroid/app/Activity;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cameraId"    # I

    .prologue
    .line 177
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 178
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 179
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 180
    .local v3, "rotation":I
    const/4 v0, 0x0

    .line 181
    .local v0, "degrees":I
    packed-switch v3, :pswitch_data_0

    .line 196
    :goto_0
    const/4 v2, 0x0

    .line 197
    .local v2, "result":I
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 199
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v2, v4, 0x168

    .line 200
    rsub-int v4, v2, 0x168

    rem-int/lit16 v2, v4, 0x168

    .line 207
    :goto_1
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 208
    return-void

    .line 184
    .end local v2    # "result":I
    :pswitch_0
    const/4 v0, 0x0

    .line 185
    goto :goto_0

    .line 187
    :pswitch_1
    const/16 v0, 0x5a

    .line 188
    goto :goto_0

    .line 190
    :pswitch_2
    const/16 v0, 0xb4

    .line 191
    goto :goto_0

    .line 193
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 204
    .restart local v2    # "result":I
    :cond_0
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v2, v4, 0x168

    goto :goto_1

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getOriginalImagePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 172
    .local v0, "storageDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 143
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 147
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->myCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 149
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->camera_id:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->myCamera:Landroid/hardware/Camera;

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->context:Landroid/app/Activity;

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->camera_id:I

    invoke-direct {p0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->setCameraDisplayOrientation(Landroid/app/Activity;I)V

    .line 152
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 164
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->myCamera:Landroid/hardware/Camera;

    .line 166
    return-void
.end method

.method public switchCameraById(I)V
    .locals 3
    .param p1, "carema_id"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->camera_id:I

    .line 220
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 221
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 223
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->camera_id:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->myCamera:Landroid/hardware/Camera;

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->context:Landroid/app/Activity;

    invoke-direct {p0, v1, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->setCameraDisplayOrientation(Landroid/app/Activity;I)V

    .line 226
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->myCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 234
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public tackPicture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->myCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->jpeg:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v2, v2, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 134
    return-void
.end method

.method public voerTack()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 138
    return-void
.end method
