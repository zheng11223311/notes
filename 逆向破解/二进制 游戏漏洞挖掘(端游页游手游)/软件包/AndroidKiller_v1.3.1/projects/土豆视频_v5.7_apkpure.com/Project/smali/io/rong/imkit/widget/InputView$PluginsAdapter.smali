.class Lio/rong/imkit/widget/InputView$PluginsAdapter;
.super Lio/rong/imkit/widget/adapter/BaseAdapter;
.source "InputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/InputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PluginsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/InputView$PluginsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/adapter/BaseAdapter",
        "<",
        "Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/InputView;


# direct methods
.method public constructor <init>(Lio/rong/imkit/widget/InputView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 515
    iput-object p1, p0, Lio/rong/imkit/widget/InputView$PluginsAdapter;->this$0:Lio/rong/imkit/widget/InputView;

    .line 516
    invoke-direct {p0, p2}, Lio/rong/imkit/widget/adapter/BaseAdapter;-><init>(Landroid/content/Context;)V

    .line 517
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILio/rong/imkit/widget/provider/InputProvider$ExtendProvider;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "data"    # Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    .prologue
    const/4 v9, 0x0

    .line 535
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/widget/InputView$PluginsAdapter$ViewHolder;

    .line 536
    .local v3, "holder":Lio/rong/imkit/widget/InputView$PluginsAdapter$ViewHolder;
    iget-object v7, v3, Lio/rong/imkit/widget/InputView$PluginsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p3, v8}, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;->obtainPluginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    iget-object v7, v3, Lio/rong/imkit/widget/InputView$PluginsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p3, v8}, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;->obtainPluginTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v7, v3, Lio/rong/imkit/widget/InputView$PluginsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    new-instance v8, Lio/rong/imkit/widget/InputView$PluginsAdapter$1;

    invoke-direct {v8, p0, p3}, Lio/rong/imkit/widget/InputView$PluginsAdapter$1;-><init>(Lio/rong/imkit/widget/InputView$PluginsAdapter;Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    if-nez p2, :cond_0

    .line 548
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    .line 549
    iget-object v7, p0, Lio/rong/imkit/widget/InputView$PluginsAdapter;->this$0:Lio/rong/imkit/widget/InputView;

    iget-object v7, v7, Lio/rong/imkit/widget/InputView;->mPluginsLayout:Landroid/widget/GridView;

    invoke-virtual {v7}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 550
    .local v0, "columns":I
    iget-object v7, p0, Lio/rong/imkit/widget/InputView$PluginsAdapter;->this$0:Lio/rong/imkit/widget/InputView;

    iget-object v7, v7, Lio/rong/imkit/widget/InputView;->mProviderList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    rem-int/2addr v7, v0

    if-nez v7, :cond_1

    iget-object v7, p0, Lio/rong/imkit/widget/InputView$PluginsAdapter;->this$0:Lio/rong/imkit/widget/InputView;

    iget-object v7, v7, Lio/rong/imkit/widget/InputView;->mProviderList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    div-int v5, v7, v0

    .line 554
    .end local v0    # "columns":I
    .local v5, "n":I
    :goto_0
    const/4 v7, 0x2

    if-le v5, v7, :cond_0

    .line 555
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 556
    .local v6, "w":I
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 557
    .local v1, "h":I
    invoke-virtual {p1, v6, v1}, Landroid/view/View;->measure(II)V

    .line 558
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 559
    .local v2, "height":I
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    mul-int/lit8 v8, v2, 0x2

    invoke-direct {v4, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 560
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lio/rong/imkit/widget/InputView$PluginsAdapter;->this$0:Lio/rong/imkit/widget/InputView;

    iget-object v7, v7, Lio/rong/imkit/widget/InputView;->mPluginsLayout:Landroid/widget/GridView;

    invoke-virtual {v7, v4}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    .end local v1    # "h":I
    .end local v2    # "height":I
    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "n":I
    .end local v6    # "w":I
    :cond_0
    return-void

    .line 550
    .restart local v0    # "columns":I
    :cond_1
    iget-object v7, p0, Lio/rong/imkit/widget/InputView$PluginsAdapter;->this$0:Lio/rong/imkit/widget/InputView;

    iget-object v7, v7, Lio/rong/imkit/widget/InputView;->mProviderList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    div-int/2addr v7, v0

    add-int/lit8 v5, v7, 0x1

    goto :goto_0

    .line 552
    .end local v0    # "columns":I
    :cond_2
    iget-object v7, p0, Lio/rong/imkit/widget/InputView$PluginsAdapter;->this$0:Lio/rong/imkit/widget/InputView;

    iget-object v7, v7, Lio/rong/imkit/widget/InputView;->mProviderList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    rem-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_3

    iget-object v7, p0, Lio/rong/imkit/widget/InputView$PluginsAdapter;->this$0:Lio/rong/imkit/widget/InputView;

    iget-object v7, v7, Lio/rong/imkit/widget/InputView;->mProviderList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    div-int/lit8 v5, v7, 0x4

    .restart local v5    # "n":I
    :goto_1
    goto :goto_0

    .end local v5    # "n":I
    :cond_3
    iget-object v7, p0, Lio/rong/imkit/widget/InputView$PluginsAdapter;->this$0:Lio/rong/imkit/widget/InputView;

    iget-object v7, v7, Lio/rong/imkit/widget/InputView;->mProviderList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v5, v7, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic bindView(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 508
    check-cast p3, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lio/rong/imkit/widget/InputView$PluginsAdapter;->bindView(Landroid/view/View;ILio/rong/imkit/widget/provider/InputProvider$ExtendProvider;)V

    return-void
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 567
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 521
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 523
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lio/rong/imkit/R$layout;->rc_wi_plugins:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 525
    .local v2, "view":Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/InputView$PluginsAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/InputView$PluginsAdapter$ViewHolder;-><init>(Lio/rong/imkit/widget/InputView$PluginsAdapter;)V

    .line 526
    .local v0, "holder":Lio/rong/imkit/widget/InputView$PluginsAdapter$ViewHolder;
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lio/rong/imkit/widget/InputView$PluginsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 527
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lio/rong/imkit/widget/InputView$PluginsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 528
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 530
    return-object v2
.end method
