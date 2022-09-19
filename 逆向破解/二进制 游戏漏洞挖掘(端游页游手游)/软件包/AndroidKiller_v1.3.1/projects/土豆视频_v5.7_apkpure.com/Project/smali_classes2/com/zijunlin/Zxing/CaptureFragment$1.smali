.class Lcom/zijunlin/Zxing/CaptureFragment$1;
.super Ljava/lang/Object;
.source "CaptureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 142
    iput-object p1, p0, Lcom/zijunlin/Zxing/CaptureFragment$1;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment$1;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    iget-object v0, v0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment$1;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    iget-object v0, v0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    invoke-virtual {v0}, Lcom/youku/widget/CodeErrorDialog;->dismiss()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment$1;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-static {v0}, Lcom/zijunlin/Zxing/CaptureFragment;->access$000(Lcom/zijunlin/Zxing/CaptureFragment;)Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment$1;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-static {v0}, Lcom/zijunlin/Zxing/CaptureFragment;->access$000(Lcom/zijunlin/Zxing/CaptureFragment;)Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zijunlin/Zxing/decoding/CaptureActivityHandler;->requestAgainPreview()V

    .line 150
    :cond_1
    return-void
.end method
