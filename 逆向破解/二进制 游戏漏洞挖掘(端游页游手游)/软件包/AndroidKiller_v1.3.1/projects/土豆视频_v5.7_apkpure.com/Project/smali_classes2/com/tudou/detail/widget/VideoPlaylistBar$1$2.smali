.class Lcom/tudou/detail/widget/VideoPlaylistBar$1$2;
.super Ljava/lang/Object;
.source "VideoPlaylistBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoPlaylistBar$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/widget/VideoPlaylistBar$1;

.field final synthetic val$mDialog:Lcom/youku/widget/TudouDialog;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoPlaylistBar$1;Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$1$2;->this$1:Lcom/tudou/detail/widget/VideoPlaylistBar$1;

    iput-object p2, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$1$2;->val$mDialog:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 148
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$1$2;->val$mDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 150
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
