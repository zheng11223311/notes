.class public Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;
.super Lcom/youku/gamecenter/fragment/GameBaseFragment;
.source "GameLocalPresentFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameBaseFragment;-><init>()V

    .line 78
    return-void
.end method

.method private initHeader(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 75
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected initViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    sget v3, Lcom/youku/gamecenter/R$layout;->fragment_game_local_gifts:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/youku/gamecenter/R$id;->empty_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "emptyView":Landroid/view/View;
    sget v3, Lcom/youku/gamecenter/R$id;->list:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mListView:Landroid/widget/ListView;

    .line 64
    iget-object v3, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->initHeader(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, "header":Landroid/view/View;
    iget-object v3, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 66
    iget-object v3, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 67
    iget-object v3, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 68
    iget-object v3, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v3, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    return-object v2
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public loadDatas()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public notifyFragmentFocused()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 162
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mCursor:Landroid/database/Cursor;

    .line 48
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/youku/gamecenter/providers/GameCenterProviderForTudou;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 51
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 53
    new-instance v0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p1, v1}, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment$MyGiftCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 54
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GiftInfo;

    .line 170
    .local v0, "gift":Lcom/youku/gamecenter/data/GiftInfo;
    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v1, v0, Lcom/youku/gamecenter/data/GiftInfo;->gift_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v2, v0, Lcom/youku/gamecenter/data/GiftInfo;->gift_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGamePresentDetailsActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->onResume()V

    .line 184
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    :cond_0
    return-void
.end method
