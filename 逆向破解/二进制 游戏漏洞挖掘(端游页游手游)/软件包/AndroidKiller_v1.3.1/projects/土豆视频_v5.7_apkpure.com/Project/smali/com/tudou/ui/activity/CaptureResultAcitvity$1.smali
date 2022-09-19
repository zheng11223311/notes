.class Lcom/tudou/ui/activity/CaptureResultAcitvity$1;
.super Ljava/lang/Object;
.source "CaptureResultAcitvity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/CaptureResultAcitvity;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/CaptureResultAcitvity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$1;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$1;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->finish()V

    .line 95
    return-void
.end method
