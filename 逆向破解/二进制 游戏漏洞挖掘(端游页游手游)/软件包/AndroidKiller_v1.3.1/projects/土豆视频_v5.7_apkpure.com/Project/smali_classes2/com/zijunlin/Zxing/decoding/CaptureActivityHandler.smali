.class public final Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/zijunlin/Zxing/CaptureFragment;

.field private final decodeThread:Lcom/zijunlin/Zxing/decoding/DecodeThread;

.field private state:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zijunlin/Zxing/CaptureFragment;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Lcom/zijunlin/Zxing/CaptureFragment;
    .param p3, "characterSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zijunlin/Zxing/CaptureFragment;",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->activity:Lcom/zijunlin/Zxing/CaptureFragment;

    .line 60
    new-instance v0, Lcom/zijunlin/Zxing/decoding/DecodeThread;

    new-instance v1, Lcom/zijunlin/Zxing/view/ViewfinderResultPointCallback;

    invoke-virtual {p1}, Lcom/zijunlin/Zxing/CaptureFragment;->getViewfinderView()Lcom/zijunlin/Zxing/view/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zijunlin/Zxing/view/ViewfinderResultPointCallback;-><init>(Lcom/zijunlin/Zxing/view/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/zijunlin/Zxing/decoding/DecodeThread;-><init>(Lcom/zijunlin/Zxing/CaptureFragment;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/zijunlin/Zxing/decoding/DecodeThread;

    .line 62
    iget-object v0, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/zijunlin/Zxing/decoding/DecodeThread;

    invoke-virtual {v0}, Lcom/zijunlin/Zxing/decoding/DecodeThread;->start()V

    .line 63
    sget-object v0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->state:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;

    .line 66
    invoke-static {}, Lcom/zijunlin/Zxing/camera/CameraManager;->get()Lcom/zijunlin/Zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zijunlin/Zxing/camera/CameraManager;->startPreview()V

    .line 67
    invoke-direct {p0}, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 68
    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->state:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;

    sget-object v1, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 132
    sget-object v0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->state:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;

    .line 133
    invoke-static {}, Lcom/zijunlin/Zxing/camera/CameraManager;->get()Lcom/zijunlin/Zxing/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/zijunlin/Zxing/decoding/DecodeThread;

    invoke-virtual {v1}, Lcom/zijunlin/Zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0c0012

    invoke-virtual {v0, v1, v2}, Lcom/zijunlin/Zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 134
    invoke-static {}, Lcom/zijunlin/Zxing/camera/CameraManager;->get()Lcom/zijunlin/Zxing/camera/CameraManager;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, p0, v1}, Lcom/zijunlin/Zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 135
    iget-object v0, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->activity:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-virtual {v0}, Lcom/zijunlin/Zxing/CaptureFragment;->drawViewfinder()V

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 72
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 77
    :sswitch_0
    iget-object v4, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->state:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;

    sget-object v5, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;

    if-ne v4, v5, :cond_0

    .line 78
    invoke-static {}, Lcom/zijunlin/Zxing/camera/CameraManager;->get()Lcom/zijunlin/Zxing/camera/CameraManager;

    move-result-object v4

    const/high16 v5, 0x7f0c0000

    invoke-virtual {v4, p0, v5}, Lcom/zijunlin/Zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    goto :goto_0

    .line 82
    :sswitch_1
    sget-object v4, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got restart preview message"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 86
    :sswitch_2
    sget-object v4, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got decode succeeded message"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v4, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;

    iput-object v4, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->state:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;

    .line 88
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 89
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 91
    .local v0, "barcode":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v5, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->activity:Lcom/zijunlin/Zxing/CaptureFragment;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/zxing/Result;

    invoke-virtual {v5, v4, v0}, Lcom/zijunlin/Zxing/CaptureFragment;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 89
    .end local v0    # "barcode":Landroid/graphics/Bitmap;
    :cond_1
    const-string v4, "barcode_bitmap"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v0, v4

    goto :goto_1

    .line 94
    .end local v1    # "bundle":Landroid/os/Bundle;
    :sswitch_3
    iget-object v4, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->activity:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-virtual {v4}, Lcom/zijunlin/Zxing/CaptureFragment;->handleHeart()V

    .line 96
    sget-object v4, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;

    iput-object v4, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->state:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;

    .line 97
    invoke-static {}, Lcom/zijunlin/Zxing/camera/CameraManager;->get()Lcom/zijunlin/Zxing/camera/CameraManager;

    move-result-object v4

    iget-object v5, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/zijunlin/Zxing/decoding/DecodeThread;

    invoke-virtual {v5}, Lcom/zijunlin/Zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x7f0c0012

    invoke-virtual {v4, v5, v6}, Lcom/zijunlin/Zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    .line 100
    :sswitch_4
    sget-object v4, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got return scan result message"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v4, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->activity:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-virtual {v4}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/4 v6, -0x1

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v5, v6, v4}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 102
    iget-object v4, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->activity:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-virtual {v4}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 105
    :sswitch_5
    sget-object v4, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got product query message"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 107
    .local v3, "url":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x80000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    iget-object v4, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->activity:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-virtual {v4}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x7f0c0000 -> :sswitch_0
        0x7f0c0013 -> :sswitch_3
        0x7f0c0014 -> :sswitch_2
        0x7f0c001d -> :sswitch_5
        0x7f0c0058 -> :sswitch_1
        0x7f0c0059 -> :sswitch_4
    .end sparse-switch
.end method

.method public quitSynchronously()V
    .locals 3

    .prologue
    .line 115
    sget-object v1, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;->DONE:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;

    iput-object v1, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->state:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;

    .line 116
    invoke-static {}, Lcom/zijunlin/Zxing/camera/CameraManager;->get()Lcom/zijunlin/Zxing/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zijunlin/Zxing/camera/CameraManager;->stopPreview()V

    .line 117
    iget-object v1, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/zijunlin/Zxing/decoding/DecodeThread;

    invoke-virtual {v1}, Lcom/zijunlin/Zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 118
    .local v0, "quit":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/zijunlin/Zxing/decoding/DecodeThread;

    invoke-virtual {v1}, Lcom/zijunlin/Zxing/decoding/DecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    const v1, 0x7f0c0014

    invoke-virtual {p0, v1}, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->removeMessages(I)V

    .line 127
    const v1, 0x7f0c0013

    invoke-virtual {p0, v1}, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->removeMessages(I)V

    .line 128
    return-void

    .line 121
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public requestAgainPreview()V
    .locals 3

    .prologue
    .line 140
    sget-object v0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->state:Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler$State;

    .line 141
    invoke-static {}, Lcom/zijunlin/Zxing/camera/CameraManager;->get()Lcom/zijunlin/Zxing/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/zijunlin/Zxing/decoding/DecodeThread;

    invoke-virtual {v1}, Lcom/zijunlin/Zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0c0012

    invoke-virtual {v0, v1, v2}, Lcom/zijunlin/Zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 142
    return-void
.end method
