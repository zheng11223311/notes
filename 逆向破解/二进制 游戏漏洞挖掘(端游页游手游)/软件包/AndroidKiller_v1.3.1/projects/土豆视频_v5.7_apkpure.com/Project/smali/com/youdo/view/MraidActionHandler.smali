.class public Lcom/youdo/view/MraidActionHandler;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/view/MraidActionHandler$2;
    }
.end annotation


# instance fields
.field private actionData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/youdo/view/MraidView$ACTION;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private layout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youdo/view/MraidActionHandler;->actionData:Ljava/util/HashMap;

    return-void
.end method

.method private doAction(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/youdo/view/MraidView$ACTION;->valueOf(Ljava/lang/String;)Lcom/youdo/view/MraidView$ACTION;

    move-result-object v0

    sget-object v1, Lcom/youdo/view/MraidActionHandler$2;->$SwitchMap$com$youdo$view$MraidView$ACTION:[I

    invoke-virtual {v0}, Lcom/youdo/view/MraidView$ACTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, v0}, Lcom/youdo/view/MraidActionHandler;->initPlayer(Landroid/os/Bundle;Lcom/youdo/view/MraidView$ACTION;)Lcom/youdo/controller/util/MraidPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/controller/util/MraidPlayer;->playAudio()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, v0}, Lcom/youdo/view/MraidActionHandler;->initPlayer(Landroid/os/Bundle;Lcom/youdo/view/MraidView$ACTION;)Lcom/youdo/controller/util/MraidPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/controller/util/MraidPlayer;->playVideo()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPlayerListener(Lcom/youdo/controller/util/MraidPlayer;)V
    .locals 1

    new-instance v0, Lcom/youdo/view/MraidActionHandler$1;

    invoke-direct {v0, p0}, Lcom/youdo/view/MraidActionHandler$1;-><init>(Lcom/youdo/view/MraidActionHandler;)V

    invoke-virtual {p1, v0}, Lcom/youdo/controller/util/MraidPlayer;->setListener(Lcom/youdo/controller/util/MraidPlayerListener;)V

    return-void
.end method


# virtual methods
.method initPlayer(Landroid/os/Bundle;Lcom/youdo/view/MraidView$ACTION;)Lcom/youdo/controller/util/MraidPlayer;
    .locals 5

    const/4 v4, -0x1

    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/youdo/controller/MraidController$PlayerProperties;

    const-string v1, "expand_dimensions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/youdo/controller/MraidController$Dimensions;

    new-instance v2, Lcom/youdo/controller/util/MraidPlayer;

    invoke-direct {v2, p0}, Lcom/youdo/controller/util/MraidPlayer;-><init>(Landroid/content/Context;)V

    const-string v3, "expand_url"

    invoke-static {v3, p1}, Lcom/youdo/controller/util/MraidUtils;->getData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/youdo/controller/util/MraidPlayer;->setPlayData(Lcom/youdo/controller/MraidController$PlayerProperties;Ljava/lang/String;)V

    if-nez v1, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    invoke-virtual {v2, v0}, Lcom/youdo/controller/util/MraidPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/youdo/view/MraidActionHandler;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/youdo/view/MraidActionHandler;->actionData:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/youdo/view/MraidActionHandler;->setPlayerListener(Lcom/youdo/controller/util/MraidPlayer;)V

    return-object v2

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Lcom/youdo/controller/MraidController$Dimensions;->width:I

    iget v4, v1, Lcom/youdo/controller/MraidController$Dimensions;->height:I

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, v1, Lcom/youdo/controller/MraidController$Dimensions;->y:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v1, v1, Lcom/youdo/controller/MraidController$Dimensions;->x:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/youdo/view/MraidActionHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/youdo/view/MraidActionHandler;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/youdo/view/MraidActionHandler;->layout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/youdo/view/MraidActionHandler;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/youdo/view/MraidActionHandler;->setContentView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/youdo/view/MraidActionHandler;->doAction(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .locals 4

    iget-object v0, p0, Lcom/youdo/view/MraidActionHandler;->actionData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v3, Lcom/youdo/view/MraidActionHandler$2;->$SwitchMap$com$youdo$view$MraidView$ACTION:[I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youdo/view/MraidView$ACTION;

    invoke-virtual {v1}, Lcom/youdo/view/MraidView$ACTION;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/controller/util/MraidPlayer;

    invoke-virtual {v0}, Lcom/youdo/controller/util/MraidPlayer;->releasePlayer()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
