.class public Lcom/youku/gamecenter/fragment/GameCategoryFragment;
.super Lcom/youku/gamecenter/fragment/GameRequestFragment;
.source "GameCategoryFragment.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetCategoriesService$OnCategoriesServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/fragment/GameCategoryFragment$TitleClickListener;,
        Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;,
        Lcom/youku/gamecenter/fragment/GameCategoryFragment$ClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GameCategory"


# instance fields
.field private mCategoriesInfo:Lcom/youku/gamecenter/data/CategoriesInfo;

.field private mContentsLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;-><init>()V

    .line 402
    return-void
.end method

.method private addCategoryItemCard(Lcom/youku/gamecenter/data/CategoryInfo;Z)V
    .locals 17
    .param p1, "category"    # Lcom/youku/gamecenter/data/CategoryInfo;
    .param p2, "isLast"    # Z

    .prologue
    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$layout;->layout_game_category_tags_item:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 160
    .local v16, "viewItem":Landroid/widget/LinearLayout;
    sget v1, Lcom/youku/gamecenter/R$id;->game_tag_title_layout:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 162
    .local v13, "cardTitleLayout":Landroid/view/View;
    sget v1, Lcom/youku/gamecenter/R$id;->game_tag_title:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 164
    .local v12, "cardTitle":Landroid/widget/TextView;
    sget v1, Lcom/youku/gamecenter/R$id;->game_tag_icon:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 166
    .local v9, "cardIcon":Landroid/widget/ImageView;
    sget v1, Lcom/youku/gamecenter/R$id;->game_tag_title_imageview_margintop:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 168
    .local v11, "cardIconMarginTop":Landroid/view/View;
    sget v1, Lcom/youku/gamecenter/R$id;->game_tag_title_imageview_marginbottom:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 170
    .local v10, "cardIconMarginBottom":Landroid/view/View;
    move-object/from16 v0, p1

    iget v1, v0, Lcom/youku/gamecenter/data/CategoryInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->getColorType(I)I

    move-result v7

    .line 171
    .local v7, "ColorType":I
    move-object/from16 v0, p1

    iget v1, v0, Lcom/youku/gamecenter/data/CategoryInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->getDrawableType(I)I

    move-result v8

    .line 173
    .local v8, "DrawableType":I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/youku/gamecenter/data/CategoryInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v1}, Lcom/youku/gamecenter/GameBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    sget v1, Lcom/youku/gamecenter/R$color;->game_category_default:I

    if-eq v7, v1, :cond_1

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    :goto_0
    new-instance v1, Lcom/youku/gamecenter/fragment/GameCategoryFragment$TitleClickListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/youku/gamecenter/data/CategoryInfo;->name:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/youku/gamecenter/fragment/GameCategoryFragment$TitleClickListener;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/data/CategoryInfo;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v13, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    sget v1, Lcom/youku/gamecenter/R$id;->gridview:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/GridView;

    .line 189
    .local v15, "gridView":Landroid/widget/GridView;
    new-instance v1, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    move-object/from16 v0, p1

    invoke-direct {v1, v2, v0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment$GridViewItemAdapter;-><init>(Landroid/content/Context;Lcom/youku/gamecenter/data/CategoryInfo;)V

    invoke-virtual {v15, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    if-eqz p2, :cond_0

    .line 192
    sget v1, Lcom/youku/gamecenter/R$id;->view_bottom:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 194
    .local v14, "foot":Landroid/view/View;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    .end local v14    # "foot":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->mContentsLayout:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    return-void

    .line 180
    .end local v15    # "gridView":Landroid/widget/GridView;
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private addCategoryViews()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->mCategoriesInfo:Lcom/youku/gamecenter/data/CategoriesInfo;

    if-nez v1, :cond_1

    .line 153
    :cond_0
    return-void

    .line 145
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->mCategoriesInfo:Lcom/youku/gamecenter/data/CategoriesInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/CategoriesInfo;->mCategoryInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->mCategoriesInfo:Lcom/youku/gamecenter/data/CategoriesInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/CategoriesInfo;->mCategoryInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->mCategoriesInfo:Lcom/youku/gamecenter/data/CategoriesInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/CategoriesInfo;->mCategoryInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/CategoryInfo;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->addCategoryItemCard(Lcom/youku/gamecenter/data/CategoryInfo;Z)V

    .line 145
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->mCategoriesInfo:Lcom/youku/gamecenter/data/CategoriesInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/CategoriesInfo;->mCategoryInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/CategoryInfo;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->addCategoryItemCard(Lcom/youku/gamecenter/data/CategoryInfo;Z)V

    goto :goto_1
.end method

.method private getColorType(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 201
    packed-switch p1, :pswitch_data_0

    .line 227
    :pswitch_0
    sget v0, Lcom/youku/gamecenter/R$color;->game_category_default:I

    :goto_0
    return v0

    .line 203
    :pswitch_1
    sget v0, Lcom/youku/gamecenter/R$color;->game_category_color1:I

    goto :goto_0

    .line 205
    :pswitch_2
    sget v0, Lcom/youku/gamecenter/R$color;->game_category_color3:I

    goto :goto_0

    .line 207
    :pswitch_3
    sget v0, Lcom/youku/gamecenter/R$color;->game_category_color4:I

    goto :goto_0

    .line 209
    :pswitch_4
    sget v0, Lcom/youku/gamecenter/R$color;->game_category_color6:I

    goto :goto_0

    .line 211
    :pswitch_5
    sget v0, Lcom/youku/gamecenter/R$color;->game_category_color7:I

    goto :goto_0

    .line 213
    :pswitch_6
    sget v0, Lcom/youku/gamecenter/R$color;->game_category_color9:I

    goto :goto_0

    .line 215
    :pswitch_7
    sget v0, Lcom/youku/gamecenter/R$color;->game_category_color10:I

    goto :goto_0

    .line 217
    :pswitch_8
    sget v0, Lcom/youku/gamecenter/R$color;->game_category_color11:I

    goto :goto_0

    .line 219
    :pswitch_9
    sget v0, Lcom/youku/gamecenter/R$color;->game_category_color12:I

    goto :goto_0

    .line 221
    :pswitch_a
    sget v0, Lcom/youku/gamecenter/R$color;->game_category_color14:I

    goto :goto_0

    .line 223
    :pswitch_b
    sget v0, Lcom/youku/gamecenter/R$color;->game_category_color16:I

    goto :goto_0

    .line 225
    :pswitch_c
    sget v0, Lcom/youku/gamecenter/R$color;->game_category_color17:I

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private getDrawableType(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 232
    packed-switch p1, :pswitch_data_0

    .line 258
    :pswitch_0
    sget v0, Lcom/youku/gamecenter/R$drawable;->game_category_icon_default:I

    :goto_0
    return v0

    .line 234
    :pswitch_1
    sget v0, Lcom/youku/gamecenter/R$drawable;->game_category_icon_1:I

    goto :goto_0

    .line 236
    :pswitch_2
    sget v0, Lcom/youku/gamecenter/R$drawable;->game_category_icon_3:I

    goto :goto_0

    .line 238
    :pswitch_3
    sget v0, Lcom/youku/gamecenter/R$drawable;->game_category_icon_4:I

    goto :goto_0

    .line 240
    :pswitch_4
    sget v0, Lcom/youku/gamecenter/R$drawable;->game_category_icon_6:I

    goto :goto_0

    .line 242
    :pswitch_5
    sget v0, Lcom/youku/gamecenter/R$drawable;->game_category_icon_7:I

    goto :goto_0

    .line 244
    :pswitch_6
    sget v0, Lcom/youku/gamecenter/R$drawable;->game_category_icon_9:I

    goto :goto_0

    .line 246
    :pswitch_7
    sget v0, Lcom/youku/gamecenter/R$drawable;->game_category_icon_10:I

    goto :goto_0

    .line 248
    :pswitch_8
    sget v0, Lcom/youku/gamecenter/R$drawable;->game_category_icon_11:I

    goto :goto_0

    .line 250
    :pswitch_9
    sget v0, Lcom/youku/gamecenter/R$drawable;->game_category_icon_12:I

    goto :goto_0

    .line 252
    :pswitch_a
    sget v0, Lcom/youku/gamecenter/R$drawable;->game_category_icon_14:I

    goto :goto_0

    .line 254
    :pswitch_b
    sget v0, Lcom/youku/gamecenter/R$drawable;->game_category_icon_16:I

    goto :goto_0

    .line 256
    :pswitch_c
    sget v0, Lcom/youku/gamecenter/R$drawable;->game_category_icon_17:I

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 263
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 266
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    return-object v0
.end method

.method private static logs(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 288
    const-string v0, "GameCategory"

    invoke-static {v0, p0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method private trackCategoryClick(II)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "position"    # I

    .prologue
    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 281
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "gameSelect_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gameSelect|gameSelectClick|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u6e38\u620f\u5206\u7c7b\u533a\u5757\u70b9\u51fb"

    const-string/jumbo v4, "\u6e38\u620f\u5206\u7c7b"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackCustomClick(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method private updateDatas(Lcom/youku/gamecenter/data/CategoriesInfo;)V
    .locals 0
    .param p1, "category"    # Lcom/youku/gamecenter/data/CategoriesInfo;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->updateDatas(Lcom/youku/gamecenter/data/IResponseable;)V

    .line 128
    iput-object p1, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->mCategoriesInfo:Lcom/youku/gamecenter/data/CategoriesInfo;

    .line 130
    return-void
.end method


# virtual methods
.method protected addHeader(Landroid/widget/ListView;Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "listview"    # Landroid/widget/ListView;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 66
    return-void
.end method

.method protected contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method protected doRequest(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 59
    new-instance v0, Lcom/youku/gamecenter/services/GetCategoriesService;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-direct {v0, v1}, Lcom/youku/gamecenter/services/GetCategoriesService;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, "service":Lcom/youku/gamecenter/services/GetCategoriesService;
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->getURL(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/services/GetCategoriesService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    .line 61
    return-void
.end method

.method protected getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTabId()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x2

    return v0
.end method

.method protected getURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 54
    invoke-static {}, Lcom/youku/gamecenter/services/URLContainer;->getGameCategoryUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 70
    sget v1, Lcom/youku/gamecenter/R$layout;->fragment_game_category_new:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 73
    .local v0, "v":Landroid/view/ViewGroup;
    sget v1, Lcom/youku/gamecenter/R$id;->categories:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->mContentsLayout:Landroid/widget/LinearLayout;

    .line 75
    invoke-super {p0, v0, v0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->initBaseViews(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 77
    return-object v0
.end method

.method protected isGamesValid()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->mCategoriesInfo:Lcom/youku/gamecenter/data/CategoriesInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyFragmentFocused()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 2
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->trackPageLoad()V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailed,\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;->errorDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->dumpLogs(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->setLoadingFailedDatas()V

    .line 107
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->setLoadingFailedView()V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/CategoriesInfo;)V
    .locals 1
    .param p1, "category"    # Lcom/youku/gamecenter/data/CategoriesInfo;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->trackPageLoad()V

    .line 119
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->updateDatas(Lcom/youku/gamecenter/data/CategoriesInfo;)V

    .line 121
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->updateUI()V

    goto :goto_0
.end method

.method protected trackPageLoad()V
    .locals 9

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->trackedPageLoad:Z

    if-eqz v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "\u5206\u7c7b\u9875\u52a0\u8f7d"

    const-string v3, "gameSelectLoad"

    iget-wide v4, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "\u6e38\u620f\u5206\u7c7b"

    invoke-static/range {v1 .. v8}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackPageLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->trackedPageLoad:Z

    goto :goto_0
.end method

.method protected updateUI()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->updateUI()V

    .line 135
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;->addCategoryViews()V

    .line 137
    return-void
.end method
