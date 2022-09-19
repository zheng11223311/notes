.class Lcom/youku/fullscreen/SystemUiHiderHoneycomb$1;
.super Ljava/lang/Object;
.source "SystemUiHiderHoneycomb.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/fullscreen/SystemUiHiderHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/fullscreen/SystemUiHiderHoneycomb;


# direct methods
.method constructor <init>(Lcom/youku/fullscreen/SystemUiHiderHoneycomb;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb$1;->this$0:Lcom/youku/fullscreen/SystemUiHiderHoneycomb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 6
    .param p1, "vis"    # I

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x1

    const/16 v3, 0x400

    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb$1;->this$0:Lcom/youku/fullscreen/SystemUiHiderHoneycomb;

    invoke-static {v0}, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->access$000(Lcom/youku/fullscreen/SystemUiHiderHoneycomb;)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_1

    .line 120
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb$1;->this$0:Lcom/youku/fullscreen/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb$1;->this$0:Lcom/youku/fullscreen/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb$1;->this$0:Lcom/youku/fullscreen/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb$1;->this$0:Lcom/youku/fullscreen/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mOnVisibilityChangeListener:Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v0, v2}, Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 131
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb$1;->this$0:Lcom/youku/fullscreen/SystemUiHiderHoneycomb;

    invoke-static {v0, v2}, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->access$102(Lcom/youku/fullscreen/SystemUiHiderHoneycomb;Z)Z

    .line 150
    :goto_0
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb$1;->this$0:Lcom/youku/fullscreen/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb$1;->this$0:Lcom/youku/fullscreen/SystemUiHiderHoneycomb;

    invoke-static {v1}, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->access$200(Lcom/youku/fullscreen/SystemUiHiderHoneycomb;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_4

    .line 138
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb$1;->this$0:Lcom/youku/fullscreen/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb$1;->this$0:Lcom/youku/fullscreen/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb$1;->this$0:Lcom/youku/fullscreen/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb$1;->this$0:Lcom/youku/fullscreen/SystemUiHiderHoneycomb;

    iget-object v0, v0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->mOnVisibilityChangeListener:Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v0, v4}, Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 148
    iget-object v0, p0, Lcom/youku/fullscreen/SystemUiHiderHoneycomb$1;->this$0:Lcom/youku/fullscreen/SystemUiHiderHoneycomb;

    invoke-static {v0, v4}, Lcom/youku/fullscreen/SystemUiHiderHoneycomb;->access$102(Lcom/youku/fullscreen/SystemUiHiderHoneycomb;Z)Z

    goto :goto_0
.end method
