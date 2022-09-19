.class public Lcom/youku/gamecenter/widgets/PlayViewBar;
.super Landroid/widget/LinearLayout;
.source "PlayViewBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/widgets/PlayViewBar$OnPlayViewBarClickListener;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/TextView;

.field private mButtonCenter:Landroid/widget/TextView;

.field private mClound:Landroid/view/View;

.field private mIcon:Landroid/widget/ImageView;

.field private mListener:Lcom/youku/gamecenter/widgets/PlayViewBar$OnPlayViewBarClickListener;

.field private mRecom:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/youku/gamecenter/R$id;->layout_game_playview_clound:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PlayViewBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mClound:Landroid/view/View;

    .line 37
    sget v0, Lcom/youku/gamecenter/R$id;->layout_game_playview_button:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PlayViewBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mButton:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/youku/gamecenter/R$id;->layout_game_playview_button_ing:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PlayViewBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mButtonCenter:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/youku/gamecenter/R$id;->layout_game_playview_title:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PlayViewBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mTitle:Landroid/widget/TextView;

    .line 40
    sget v0, Lcom/youku/gamecenter/R$id;->layout_game_playview_recom:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PlayViewBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mRecom:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/youku/gamecenter/R$id;->layout_game_playview_icon:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PlayViewBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mIcon:Landroid/widget/ImageView;

    .line 42
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mRecom:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mClound:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mButtonCenter:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mButton:Landroid/widget/TextView;

    if-ne v0, p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mListener:Lcom/youku/gamecenter/widgets/PlayViewBar$OnPlayViewBarClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/PlayViewBar$OnPlayViewBarClickListener;->onButtonClicked()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mClound:Landroid/view/View;

    if-ne v0, p1, :cond_2

    .line 92
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mListener:Lcom/youku/gamecenter/widgets/PlayViewBar$OnPlayViewBarClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/PlayViewBar$OnPlayViewBarClickListener;->onButtonClicked()V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mIcon:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_3

    .line 97
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mListener:Lcom/youku/gamecenter/widgets/PlayViewBar$OnPlayViewBarClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/PlayViewBar$OnPlayViewBarClickListener;->onDetailPageRelatedClicked()V

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mTitle:Landroid/widget/TextView;

    if-ne v0, p1, :cond_4

    .line 102
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mListener:Lcom/youku/gamecenter/widgets/PlayViewBar$OnPlayViewBarClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/PlayViewBar$OnPlayViewBarClickListener;->onDetailPageRelatedClicked()V

    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mRecom:Landroid/widget/TextView;

    if-ne v0, p1, :cond_5

    .line 107
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mListener:Lcom/youku/gamecenter/widgets/PlayViewBar$OnPlayViewBarClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/PlayViewBar$OnPlayViewBarClickListener;->onDetailPageRelatedClicked()V

    goto :goto_0

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mButtonCenter:Landroid/widget/TextView;

    if-ne v0, p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mListener:Lcom/youku/gamecenter/widgets/PlayViewBar$OnPlayViewBarClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/PlayViewBar$OnPlayViewBarClickListener;->onButtonClicked()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 32
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/PlayViewBar;->initViews()V

    .line 33
    return-void
.end method

.method public setBaseData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "recom"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mRecom:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public setButtonIngText(I)V
    .locals 2
    .param p1, "strId"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mButtonCenter:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mButtonCenter:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    return-void
.end method

.method public setButtonInstallableText(I)V
    .locals 2
    .param p1, "strId"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mButtonCenter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    return-void
.end method

.method public setButtonInstalled(I)V
    .locals 2
    .param p1, "strId"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mButtonCenter:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 65
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mButtonCenter:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public setCloundVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 81
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mClound:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-void

    .line 81
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-void
.end method

.method public setPlayViewBarClickListener(Lcom/youku/gamecenter/widgets/PlayViewBar$OnPlayViewBarClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/gamecenter/widgets/PlayViewBar$OnPlayViewBarClickListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/PlayViewBar;->mListener:Lcom/youku/gamecenter/widgets/PlayViewBar$OnPlayViewBarClickListener;

    .line 52
    return-void
.end method
