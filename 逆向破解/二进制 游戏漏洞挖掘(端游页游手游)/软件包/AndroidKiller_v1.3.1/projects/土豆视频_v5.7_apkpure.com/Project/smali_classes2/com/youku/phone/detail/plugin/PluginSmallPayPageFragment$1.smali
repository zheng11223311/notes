.class Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment$1;
.super Ljava/lang/Object;
.source "PluginSmallPayPageFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment$1;->this$0:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method
