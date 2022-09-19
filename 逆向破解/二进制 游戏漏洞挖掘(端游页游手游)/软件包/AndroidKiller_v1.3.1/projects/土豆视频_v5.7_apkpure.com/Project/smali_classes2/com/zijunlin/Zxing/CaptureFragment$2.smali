.class Lcom/zijunlin/Zxing/CaptureFragment$2;
.super Ljava/lang/Object;
.source "CaptureFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zijunlin/Zxing/CaptureFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zijunlin/Zxing/CaptureFragment;


# direct methods
.method constructor <init>(Lcom/zijunlin/Zxing/CaptureFragment;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/zijunlin/Zxing/CaptureFragment$2;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment$2;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-static {v0}, Lcom/zijunlin/Zxing/CaptureFragment;->access$000(Lcom/zijunlin/Zxing/CaptureFragment;)Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment$2;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-static {v0}, Lcom/zijunlin/Zxing/CaptureFragment;->access$000(Lcom/zijunlin/Zxing/CaptureFragment;)Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->requestAgainPreview()V

    .line 158
    :cond_0
    return-void
.end method
