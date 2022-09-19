.class Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView$1;
.super Ljava/lang/Object;
.source "VideoRecordUpdateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;->setVisibility(I)V

    .line 51
    return-void
.end method
