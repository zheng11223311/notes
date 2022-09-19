.class Lcom/youku/gamecenter/GameSearchActivity$2;
.super Ljava/lang/Object;
.source "GameSearchActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameSearchActivity;->showPopupMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameSearchActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameSearchActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/youku/gamecenter/GameSearchActivity$2;->this$0:Lcom/youku/gamecenter/GameSearchActivity;

    iput-object p2, p0, Lcom/youku/gamecenter/GameSearchActivity$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;)V
    .locals 6
    .param p1, "item"    # Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;

    .prologue
    .line 334
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity$2;->this$0:Lcom/youku/gamecenter/GameSearchActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/GameSearchActivity;->access$400(Lcom/youku/gamecenter/GameSearchActivity;)Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->dismiss()V

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 337
    .local v0, "now":J
    invoke-static {}, Lcom/youku/gamecenter/GameSearchActivity;->access$500()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 347
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-static {v0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->access$502(J)J

    .line 342
    invoke-virtual {p1}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 344
    :pswitch_0
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity$2;->this$0:Lcom/youku/gamecenter/GameSearchActivity;

    iget-object v3, p0, Lcom/youku/gamecenter/GameSearchActivity$2;->val$view:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/youku/gamecenter/GameSearchActivity;->onStickMenuClick(Landroid/view/View;)V

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
