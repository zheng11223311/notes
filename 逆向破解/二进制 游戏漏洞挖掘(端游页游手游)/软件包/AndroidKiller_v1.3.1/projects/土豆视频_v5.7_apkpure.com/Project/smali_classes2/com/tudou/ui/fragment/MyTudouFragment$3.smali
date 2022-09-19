.class Lcom/tudou/ui/fragment/MyTudouFragment$3;
.super Ljava/lang/Object;
.source "MyTudouFragment.java"

# interfaces
.implements Lcom/youku/adapter/CacheListAdapter$OnSetEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MyTudouFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTudouFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setEditListener(ZLandroid/view/View;)V
    .locals 1
    .param p1, "edit"    # Z
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$3;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v0, p1, p2}, Lcom/tudou/ui/fragment/MyTudouFragment;->setEdit(ZLandroid/view/View;)V

    .line 241
    return-void
.end method
