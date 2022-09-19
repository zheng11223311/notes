.class public Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "GameLocalPresentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyGiftCursorAdapter"
.end annotation


# instance fields
.field private mInflate:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 85
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;->mInflate:Landroid/view/LayoutInflater;

    .line 87
    return-void
.end method

.method private getData(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGiftInfoFromCusor(Landroid/database/Cursor;)Lcom/youku/gamecenter/data/GiftInfo;
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 126
    new-instance v0, Lcom/youku/gamecenter/data/GiftInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/data/GiftInfo;-><init>()V

    .line 128
    .local v0, "g":Lcom/youku/gamecenter/data/GiftInfo;
    const-string v1, "gift_id"

    invoke-direct {p0, p1, v1}, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;->getData(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GiftInfo;->gift_id:Ljava/lang/String;

    .line 129
    const-string v1, "gift_name"

    invoke-direct {p0, p1, v1}, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;->getData(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GiftInfo;->gift_name:Ljava/lang/String;

    .line 130
    const-string v1, "gift_code"

    invoke-direct {p0, p1, v1}, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;->getData(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GiftInfo;->gift_code:Ljava/lang/String;

    .line 131
    const-string v1, "package_name"

    invoke-direct {p0, p1, v1}, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;->getData(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GiftInfo;->package_name:Ljava/lang/String;

    .line 133
    const-string v1, "game_name"

    invoke-direct {p0, p1, v1}, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;->getData(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GiftInfo;->game_name:Ljava/lang/String;

    .line 134
    const-string v1, "icon_url"

    invoke-direct {p0, p1, v1}, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;->getData(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GiftInfo;->icon_url:Ljava/lang/String;

    .line 135
    const-string/jumbo v1, "using_time"

    invoke-direct {p0, p1, v1}, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;->getData(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GiftInfo;->using_time:Ljava/lang/String;

    .line 136
    const-string/jumbo v1, "state"

    invoke-direct {p0, p1, v1}, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;->getData(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GiftInfo;->state:Ljava/lang/String;

    .line 138
    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 92
    invoke-direct {p0, p3}, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;->getGiftInfoFromCusor(Landroid/database/Cursor;)Lcom/youku/gamecenter/data/GiftInfo;

    move-result-object v1

    .line 94
    .local v1, "gift":Lcom/youku/gamecenter/data/GiftInfo;
    sget v6, Lcom/youku/gamecenter/R$id;->icon:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 95
    .local v3, "icon":Landroid/widget/ImageView;
    sget v6, Lcom/youku/gamecenter/R$id;->title:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 96
    .local v4, "title":Landroid/widget/TextView;
    sget v6, Lcom/youku/gamecenter/R$id;->gift_code:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    .local v2, "gift_code":Landroid/widget/TextView;
    sget v6, Lcom/youku/gamecenter/R$id;->using_time:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 99
    .local v5, "using_time":Landroid/widget/TextView;
    sget v6, Lcom/youku/gamecenter/R$id;->button:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "button":Landroid/view/View;
    iget-object v6, v1, Lcom/youku/gamecenter/data/GiftInfo;->gift_name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v6, v1, Lcom/youku/gamecenter/data/GiftInfo;->gift_code:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5151\u6362\u65e5\u671f\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/youku/gamecenter/data/GiftInfo;->using_time:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v6

    iget-object v7, v1, Lcom/youku/gamecenter/data/GiftInfo;->icon_url:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 107
    new-instance v6, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter$1;

    invoke-direct {v6, p0, p2, v2}, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter$1;-><init>(Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;->mInflate:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/gamecenter/R$layout;->listview_game_mygift_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
