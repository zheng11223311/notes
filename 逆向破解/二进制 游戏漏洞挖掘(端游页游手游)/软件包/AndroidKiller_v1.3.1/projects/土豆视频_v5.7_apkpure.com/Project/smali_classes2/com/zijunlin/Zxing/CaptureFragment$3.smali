.class Lcom/zijunlin/Zxing/CaptureFragment$3;
.super Ljava/lang/Object;
.source "CaptureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zijunlin/Zxing/CaptureFragment;->initTitle(Landroid/view/View;)V
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
    .line 211
    iput-object p1, p0, Lcom/zijunlin/Zxing/CaptureFragment$3;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment$3;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-virtual {v0}, Lcom/zijunlin/Zxing/CaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 216
    return-void
.end method
