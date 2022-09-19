.class public Lcom/youku/gamecenter/widgets/HomePageDialog;
.super Landroid/app/Dialog;
.source "HomePageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;
    }
.end annotation


# instance fields
.field private mBottomCancel:Landroid/view/View;

.field private mBottomInstall:Landroid/widget/TextView;

.field private mBottomLayout:Landroid/view/View;

.field private mItem1Button:Landroid/view/View;

.field private mItem1HoverContainer:Landroid/view/View;

.field private mItem1Layout:Landroid/view/View;

.field private mItem1Post:Landroid/widget/ImageView;

.field private mItem1SingleStyleButton:Landroid/view/View;

.field private mItem1SingleStyleLayout:Landroid/view/View;

.field private mItem1SingleStyleTitle:Landroid/widget/TextView;

.field private mItem1Title:Landroid/widget/TextView;

.field private mItem2Button:Landroid/view/View;

.field private mItem2Icon:Landroid/widget/ImageView;

.field private mItem2Layout:Landroid/view/View;

.field private mItem2Recom:Landroid/widget/TextView;

.field private mItem2Title:Landroid/widget/TextView;

.field private mItem3Button:Landroid/view/View;

.field private mItem3Icon:Landroid/widget/ImageView;

.field private mItem3Layout:Landroid/view/View;

.field private mItem3Recom:Landroid/widget/TextView;

.field private mItem3Title:Landroid/widget/TextView;

.field private mListener:Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;

.field private mRootView:Landroid/view/View;

.field private mSplitLine:Landroid/view/View;

.field private mSplitLine1:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    sget v0, Lcom/youku/gamecenter/R$style;->game_home_dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 51
    return-void
.end method

.method public static createDialog(Landroid/content/Context;Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;)Lcom/youku/gamecenter/widgets/HomePageDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;

    .prologue
    const/4 v1, 0x1

    .line 55
    new-instance v0, Lcom/youku/gamecenter/widgets/HomePageDialog;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/widgets/HomePageDialog;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "dialog":Lcom/youku/gamecenter/widgets/HomePageDialog;
    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/HomePageDialog;->setCanceledOnTouchOutside(Z)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/HomePageDialog;->requestWindowFeature(I)Z

    .line 58
    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/widgets/HomePageDialog;->setOnHomePageDialogClickListener(Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;)V

    .line 59
    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->show()V

    .line 60
    return-object v0
.end method

.method private getLayoutId()I
    .locals 1

    .prologue
    .line 166
    sget v0, Lcom/youku/gamecenter/R$layout;->widget_home_page_dialog:I

    return v0
.end method

.method private handleViewClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1Button:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mListener:Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;->onItem1ActionButtonClicked()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1SingleStyleButton:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mListener:Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;->onItem1ActionButtonClicked()V

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem2Button:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mListener:Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;->onItem2ActionButtonClicked()V

    goto :goto_0

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem3Button:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 195
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mListener:Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;->onItem3ActionButtonClicked()V

    goto :goto_0

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1Layout:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 200
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mListener:Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;->onItem1Clicked()V

    goto :goto_0

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1SingleStyleLayout:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 205
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mListener:Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;->onItem1Clicked()V

    goto :goto_0

    .line 209
    :cond_6
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem2Layout:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 210
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mListener:Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;->onItem2Clicked()V

    goto :goto_0

    .line 214
    :cond_7
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem3Layout:Landroid/view/View;

    if-ne p1, v0, :cond_8

    .line 215
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mListener:Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;->onItem3Clicked()V

    goto :goto_0

    .line 219
    :cond_8
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mBottomInstall:Landroid/widget/TextView;

    if-ne p1, v0, :cond_9

    .line 220
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mListener:Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;->onBottomClicked()V

    goto :goto_0

    .line 224
    :cond_9
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mBottomCancel:Landroid/view/View;

    if-ne p1, v0, :cond_a

    .line 225
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->dismiss()V

    goto :goto_0

    .line 229
    :cond_a
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mRootView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->dismiss()V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 112
    sget v0, Lcom/youku/gamecenter/R$id;->item1:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1Layout:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1Layout:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->poster:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1Post:Landroid/widget/ImageView;

    .line 114
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1Layout:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1Title:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1Layout:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->action_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1Button:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1Layout:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->item1_hover_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1HoverContainer:Landroid/view/View;

    .line 118
    sget v0, Lcom/youku/gamecenter/R$id;->item1_single_style:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1SingleStyleLayout:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1SingleStyleLayout:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->item1_single_style_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1SingleStyleTitle:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1SingleStyleLayout:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->action_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1SingleStyleButton:Landroid/view/View;

    .line 124
    sget v0, Lcom/youku/gamecenter/R$id;->item2:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem2Layout:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem2Layout:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem2Icon:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem2Layout:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem2Title:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem2Layout:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->recom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem2Recom:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem2Layout:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->action_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem2Button:Landroid/view/View;

    .line 130
    sget v0, Lcom/youku/gamecenter/R$id;->split_line:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mSplitLine:Landroid/view/View;

    .line 132
    sget v0, Lcom/youku/gamecenter/R$id;->item3:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem3Layout:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem3Layout:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem3Icon:Landroid/widget/ImageView;

    .line 134
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem3Layout:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem3Title:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem3Layout:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->recom:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem3Recom:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem3Layout:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->action_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem3Button:Landroid/view/View;

    .line 138
    sget v0, Lcom/youku/gamecenter/R$id;->rootview:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mRootView:Landroid/view/View;

    .line 140
    sget v0, Lcom/youku/gamecenter/R$id;->bottom_layout:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mBottomLayout:Landroid/view/View;

    .line 141
    sget v0, Lcom/youku/gamecenter/R$id;->bottom_install:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mBottomInstall:Landroid/widget/TextView;

    .line 142
    sget v0, Lcom/youku/gamecenter/R$id;->bottom_cancel:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mBottomCancel:Landroid/view/View;

    .line 143
    sget v0, Lcom/youku/gamecenter/R$id;->split_line1:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mSplitLine1:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1Layout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1Button:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1SingleStyleLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1SingleStyleButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem2Layout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem2Button:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem3Layout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem3Button:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mBottomLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mBottomInstall:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mBottomInstall:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method


# virtual methods
.method public getItem2Icon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem2Icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getItem3Icon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem3Icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->dismiss()V

    .line 174
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/widgets/HomePageDialog;->handleViewClick(Landroid/view/View;)V

    .line 175
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->setContentView(I)V

    .line 67
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/HomePageDialog;->initView()V

    .line 68
    return-void
.end method

.method public setItem1Data(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "recom"    # Ljava/lang/String;
    .param p4, "item1SingleStyle"    # Z

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mSplitLine1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mBottomLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mBottomInstall:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1Layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1Post:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1Title:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    if-eqz p4, :cond_1

    .line 83
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1HoverContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1SingleStyleLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1SingleStyleTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_1
    return-void
.end method

.method public setItem1DataBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1Post:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    return-void
.end method

.method public setItem2Data(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "total"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mSplitLine1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mBottomLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mBottomInstall:Landroid/widget/TextView;

    const-string/jumbo v1, "\u4e00\u952e\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem2Layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem2Title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem2Recom:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method public setItem3Data(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "total"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mSplitLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem3Layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem3Title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem3Recom:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method public setOnHomePageDialogClickListener(Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mListener:Lcom/youku/gamecenter/widgets/HomePageDialog$OnHomePageDialogClickListener;

    .line 254
    return-void
.end method

.method public setPostImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/HomePageDialog;->mItem1Post:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
