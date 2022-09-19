.class Lcom/youku/widget/TudouTab$1;
.super Ljava/lang/Object;
.source "TudouTab.java"

# interfaces
.implements Lcom/youku/widget/TudouTab$OnDoubleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/TudouTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/TudouTab;


# direct methods
.method constructor <init>(Lcom/youku/widget/TudouTab;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnDoubleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 577
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/youku/util/Util;->LAST_EXIT_INTENT_TIME:J

    .line 578
    sput-boolean v2, Lcom/youku/widget/TudouTab;->IS_CLICK:Z

    .line 579
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 609
    :goto_0
    return-void

    .line 581
    :sswitch_0
    iget-object v0, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouTab;->onTabDoubleClick(I)V

    .line 583
    const-string v0, "\u9996\u9875Tab\u6309\u94ae\u70b9\u51fb"

    iget-object v1, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    invoke-virtual {v1}, Lcom/youku/widget/TudouTab;->getOldTabString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u9996\u9875tab"

    iget-object v3, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    invoke-static {v3}, Lcom/youku/widget/TudouTab;->access$100(Lcom/youku/widget/TudouTab;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 592
    :sswitch_1
    iget-object v0, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouTab;->onTabDoubleClick(I)V

    .line 593
    const-string v0, "\u53d1\u73b0Tab\u6309\u94ae\u70b9\u51fb"

    iget-object v1, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    invoke-virtual {v1}, Lcom/youku/widget/TudouTab;->getOldTabString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u53d1\u73b0tab"

    iget-object v3, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    invoke-static {v3}, Lcom/youku/widget/TudouTab;->access$100(Lcom/youku/widget/TudouTab;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 597
    :sswitch_2
    iget-object v0, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouTab;->onTabDoubleClick(I)V

    .line 598
    const-string v0, "\u6211\u7684Tab\u6309\u94ae\u70b9\u51fb"

    iget-object v1, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    invoke-virtual {v1}, Lcom/youku/widget/TudouTab;->getOldTabString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6211\u7684tab"

    iget-object v3, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    invoke-static {v3}, Lcom/youku/widget/TudouTab;->access$100(Lcom/youku/widget/TudouTab;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 602
    :sswitch_3
    iget-object v0, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    invoke-virtual {v0, v2}, Lcom/youku/widget/TudouTab;->onTabDoubleClick(I)V

    .line 603
    const-string v0, "\u8ba2\u9605Tab\u6309\u94ae\u70b9\u51fb"

    iget-object v1, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    invoke-virtual {v1}, Lcom/youku/widget/TudouTab;->getOldTabString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8ba2\u9605tab"

    iget-object v3, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    invoke-static {v3}, Lcom/youku/widget/TudouTab;->access$100(Lcom/youku/widget/TudouTab;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 579
    :sswitch_data_0
    .sparse-switch
        0x7f0c0714 -> :sswitch_0
        0x7f0c0717 -> :sswitch_3
        0x7f0c071b -> :sswitch_1
        0x7f0c071f -> :sswitch_2
    .end sparse-switch
.end method

.method public OnSingleClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 537
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/youku/util/Util;->LAST_EXIT_INTENT_TIME:J

    .line 538
    sput-boolean v2, Lcom/youku/widget/TudouTab;->IS_CLICK:Z

    .line 539
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 572
    :goto_0
    iget-object v0, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    invoke-static {v0}, Lcom/youku/widget/TudouTab;->access$000(Lcom/youku/widget/TudouTab;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 573
    return-void

    .line 541
    :sswitch_0
    iget-object v0, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouTab;->onTabClick(I)V

    goto :goto_0

    .line 552
    :sswitch_1
    iget-object v0, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    iget-object v0, v0, Lcom/youku/widget/TudouTab;->mDiscoveryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    iget-object v0, v0, Lcom/youku/widget/TudouTab;->mDiscoveryIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouTab;->onTabClick(I)V

    goto :goto_0

    .line 560
    :sswitch_2
    iget-object v0, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouTab;->onTabClick(I)V

    goto :goto_0

    .line 565
    :sswitch_3
    iget-object v0, p0, Lcom/youku/widget/TudouTab$1;->this$0:Lcom/youku/widget/TudouTab;

    invoke-virtual {v0, v2}, Lcom/youku/widget/TudouTab;->onTabClick(I)V

    goto :goto_0

    .line 539
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0714 -> :sswitch_0
        0x7f0c0717 -> :sswitch_3
        0x7f0c071b -> :sswitch_1
        0x7f0c071f -> :sswitch_2
    .end sparse-switch
.end method
