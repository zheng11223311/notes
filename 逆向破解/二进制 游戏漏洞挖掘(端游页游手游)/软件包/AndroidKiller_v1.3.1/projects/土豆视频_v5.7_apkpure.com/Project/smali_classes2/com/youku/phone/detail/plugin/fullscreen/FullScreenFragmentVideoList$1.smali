.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$1;
.super Ljava/lang/Object;
.source "FullScreenFragmentVideoList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;I)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;

    iput p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$1;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$1;->val$finalI:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 134
    return-void
.end method
