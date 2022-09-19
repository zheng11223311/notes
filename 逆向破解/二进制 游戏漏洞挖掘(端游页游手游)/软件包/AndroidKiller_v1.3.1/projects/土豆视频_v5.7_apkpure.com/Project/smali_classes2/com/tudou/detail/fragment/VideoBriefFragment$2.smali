.class Lcom/tudou/detail/fragment/VideoBriefFragment$2;
.super Ljava/lang/Object;
.source "VideoBriefFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoBriefFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoBriefFragment;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method
