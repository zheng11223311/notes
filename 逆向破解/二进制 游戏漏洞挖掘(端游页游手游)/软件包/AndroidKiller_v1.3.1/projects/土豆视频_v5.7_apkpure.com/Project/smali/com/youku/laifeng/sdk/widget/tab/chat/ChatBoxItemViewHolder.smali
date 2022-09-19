.class public Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;
.super Ljava/lang/Object;
.source "ChatBoxItemViewHolder.java"


# instance fields
.field private mBottonSlider:Landroid/widget/TextView;

.field private mChatBg:Landroid/view/View;

.field private mChatDetail:Landroid/widget/TextView;

.field private mGender:Landroid/widget/LinearLayout;

.field private mGenderColor:Landroid/widget/TextView;

.field private mGenderIcon:Landroid/widget/ImageView;

.field private mHeadContainer:Landroid/widget/LinearLayout;

.field private mHeadView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMessage:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;

.field private mName:Ljava/lang/String;

.field private userIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "msg"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGender:Landroid/widget/LinearLayout;

    .line 45
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderIcon:Landroid/widget/ImageView;

    .line 46
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderColor:Landroid/widget/TextView;

    .line 47
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    .line 48
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadContainer:Landroid/widget/LinearLayout;

    .line 49
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mBottonSlider:Landroid/widget/TextView;

    .line 50
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    .line 51
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mName:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mMessage:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;

    .line 58
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    .line 59
    iput-object p2, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mMessage:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;

    .line 60
    iput-object p3, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->userIds:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "chat_item_gender"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGender:Landroid/widget/LinearLayout;

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "chat_item_gender_icon"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderIcon:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "chat_item_gender_color"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderColor:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "chat_item_message"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "chat_item_head_container"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadContainer:Landroid/widget/LinearLayout;

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "item_slider"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mBottonSlider:Landroid/widget/TextView;

    .line 76
    invoke-direct {p0, p2}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->setData(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;)V

    .line 77
    return-void
.end method

.method private addImageSpan()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 643
    new-instance v2, Landroid/text/SpannableString;

    const-string v3, " "

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 644
    .local v2, "spanString":Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "lf_chat_item_tiefen_icon"

    invoke-static {v4, v5, v6}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 645
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v3

    const/high16 v4, 0x41880000    # 17.0f

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v4

    invoke-virtual {v0, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 646
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v0, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 647
    .local v1, "span":Landroid/text/style/ImageSpan;
    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-virtual {v2, v1, v7, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 648
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 649
    return-void
.end method

.method private setData(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;)V
    .locals 34
    .param p1, "msg"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;

    .prologue
    .line 103
    const/4 v12, 0x0

    .line 105
    .local v12, "lp":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    const/16 v30, 0x13

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setGravity(I)V

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getMesasgeSource()I

    move-result v29

    packed-switch v29, :pswitch_data_0

    .line 117
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getType()I

    move-result v29

    sparse-switch v29, :sswitch_data_0

    .line 601
    :goto_0
    return-void

    .line 119
    :sswitch_0
    const-string v29, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mName:Ljava/lang/String;

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    const/high16 v30, 0x42280000    # 42.0f

    invoke-static/range {v30 .. v30}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setHeight(I)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    sget-object v30, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    .local v7, "chatP":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v29, 0x3f800000    # 1.0f

    invoke-static/range {v29 .. v29}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v29

    move/from16 v0, v29

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v30, v0

    const-class v29, Landroid/text/SpannableString;

    const-string v31, "f0[0-9]{2}|f10[0-7]|g0[0-9]{2}|g10[0-7]"

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getMessageDetail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/CharSequence;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const-string v29, "gd"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_chat_item_gender_male_icon"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderColor:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "color"

    const-string v32, "lf_chat_item_gender_male"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 137
    :goto_1
    const-string v29, "gf"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "layout"

    const-string v32, "lf_chat_item_head_anchor"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_image"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .line 140
    .local v14, "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setVisibility(I)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_super_image"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 142
    .local v15, "mSuperHeaderIcon":Landroid/widget/ImageView;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v29

    const-string v30, "drawable"

    const-string v31, "lf_chat_item_super_admin_icon"

    invoke-static/range {v29 .. v31}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_lv"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 145
    .local v13, "lvIcon":Landroid/widget/ImageView;
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_name"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 147
    .local v6, "anchorName":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_anchor"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setBackgroundColor(I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mBottonSlider:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_user"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadContainer:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGender:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    const/16 v30, 0x4

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    new-instance v12, Landroid/widget/AbsListView$LayoutParams;

    .end local v12    # "lp":Landroid/widget/AbsListView$LayoutParams;
    const/16 v29, -0x1

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v12, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 153
    .restart local v12    # "lp":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 130
    .end local v6    # "anchorName":Landroid/widget/TextView;
    .end local v13    # "lvIcon":Landroid/widget/ImageView;
    .end local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    .end local v15    # "mSuperHeaderIcon":Landroid/widget/ImageView;
    :cond_0
    const-string v29, "gd"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_chat_item_gender_female_icon"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderColor:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "color"

    const-string v32, "lf_chat_item_gender_female"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 134
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_chat_item_gender_male_icon"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderColor:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "color"

    const-string v32, "lf_chat_item_gender_male"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 156
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->isAnchor()Z

    move-result v29

    if-eqz v29, :cond_6

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "layout"

    const-string v32, "lf_chat_item_head_anchor"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_image"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .line 159
    .restart local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_user_default_avatar"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageDefault(Landroid/graphics/drawable/Drawable;)V

    .line 160
    const-string v29, "gd"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_user_avatar_round_background_male"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageRound(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :goto_2
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v29

    const-string v30, "faceUrl"

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->getAnchorInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageUrl(Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_lv"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 167
    .restart local v13    # "lvIcon":Landroid/widget/ImageView;
    const-string v29, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5

    .line 168
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_4

    .line 169
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_name"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 176
    .restart local v6    # "anchorName":Landroid/widget/TextView;
    const-string v29, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_anchor"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setBackgroundColor(I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mBottonSlider:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_user"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 226
    .end local v6    # "anchorName":Landroid/widget/TextView;
    .end local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadContainer:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGender:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    new-instance v12, Landroid/widget/AbsListView$LayoutParams;

    .end local v12    # "lp":Landroid/widget/AbsListView$LayoutParams;
    const/16 v29, -0x1

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v12, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 229
    .restart local v12    # "lp":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 163
    .end local v13    # "lvIcon":Landroid/widget/ImageView;
    .restart local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_user_avatar_round_background_female"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageRound(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 171
    .restart local v13    # "lvIcon":Landroid/widget/ImageView;
    :cond_4
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 173
    :cond_5
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 181
    .end local v13    # "lvIcon":Landroid/widget/ImageView;
    .end local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "layout"

    const-string v32, "lf_chat_item_head_user"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_user_lv"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 183
    .restart local v13    # "lvIcon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_user_lv"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 185
    .local v23, "userLvIcon":Landroid/widget/ImageView;
    :try_start_0
    const-string v29, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_9

    .line 186
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_8

    .line 187
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    :goto_5
    const-string v29, "l"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_b

    .line 194
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "l"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getUserLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_a

    .line 195
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "l"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getUserLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_user_name"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 206
    .local v24, "userName":Landroid/widget/TextView;
    const-string v29, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 208
    invoke-virtual {v13}, Landroid/widget/ImageView;->getVisibility()I

    move-result v29

    if-nez v29, :cond_7

    .line 209
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 210
    .local v16, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v29, 0x3

    invoke-virtual {v13}, Landroid/widget/ImageView;->getId()I

    move-result v30

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 211
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    .end local v16    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_user"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setBackgroundColor(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mBottonSlider:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_anchor"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string/jumbo v32, "user_item_ward"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 219
    .local v25, "ward":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->userIds:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const-string v30, "i"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 220
    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 189
    .end local v24    # "userName":Landroid/widget/TextView;
    .end local v25    # "ward":Landroid/widget/ImageView;
    :cond_8
    const/16 v29, 0x8

    :try_start_1
    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 201
    :catch_0
    move-exception v29

    goto/16 :goto_6

    .line 191
    :cond_9
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 197
    :cond_a
    const/16 v29, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 199
    :cond_b
    const/16 v29, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .line 222
    .restart local v24    # "userName":Landroid/widget/TextView;
    .restart local v25    # "ward":Landroid/widget/ImageView;
    :cond_c
    const/16 v29, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 232
    .end local v7    # "chatP":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "lvIcon":Landroid/widget/ImageView;
    .end local v23    # "userLvIcon":Landroid/widget/ImageView;
    .end local v24    # "userName":Landroid/widget/TextView;
    .end local v25    # "ward":Landroid/widget/ImageView;
    :sswitch_1
    const-string v29, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mName:Ljava/lang/String;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    const/high16 v30, 0x42280000    # 42.0f

    invoke-static/range {v30 .. v30}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setHeight(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 235
    .local v11, "giftP":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v29, 0x40a00000    # 5.0f

    invoke-static/range {v29 .. v29}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v29

    move/from16 v0, v29

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    const-string v29, "gd"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_chat_item_gender_male_icon"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderColor:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "color"

    const-string v32, "lf_chat_item_gender_male"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 247
    :goto_7
    const-string v29, "gf"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "layout"

    const-string v32, "lf_chat_item_head_anchor"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_image"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .line 250
    .restart local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setVisibility(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_super_image"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 252
    .restart local v15    # "mSuperHeaderIcon":Landroid/widget/ImageView;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v29

    const-string v30, "drawable"

    const-string v31, "lf_chat_item_super_admin_icon"

    invoke-static/range {v29 .. v31}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_lv"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 255
    .restart local v13    # "lvIcon":Landroid/widget/ImageView;
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_name"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 257
    .restart local v6    # "anchorName":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_anchor"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setBackgroundColor(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mBottonSlider:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_user"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadContainer:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGender:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    const/16 v30, 0x4

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v10, p1

    .line 262
    check-cast v10, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;

    .line 263
    .local v10, "giftMessage":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;
    const-string v29, "g"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 264
    .local v9, "giftId":Ljava/lang/String;
    const-string/jumbo v17, "xingmeng_gift_[0-9]{1,}"

    .line 265
    .local v17, "reg":Ljava/lang/String;
    const-class v29, Landroid/text/SpannableString;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getGiftsDirPath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "xingmeng_gift_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getMessageDetail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/text/SpannableString;

    .line 266
    .local v21, "test":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    new-instance v12, Landroid/widget/AbsListView$LayoutParams;

    .end local v12    # "lp":Landroid/widget/AbsListView$LayoutParams;
    const/16 v29, -0x1

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v12, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 268
    .restart local v12    # "lp":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 240
    .end local v6    # "anchorName":Landroid/widget/TextView;
    .end local v9    # "giftId":Ljava/lang/String;
    .end local v10    # "giftMessage":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;
    .end local v13    # "lvIcon":Landroid/widget/ImageView;
    .end local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    .end local v15    # "mSuperHeaderIcon":Landroid/widget/ImageView;
    .end local v17    # "reg":Ljava/lang/String;
    .end local v21    # "test":Landroid/text/SpannableString;
    :cond_d
    const-string v29, "gd"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_chat_item_gender_female_icon"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderColor:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "color"

    const-string v32, "lf_chat_item_gender_female"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 244
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_chat_item_gender_male_icon"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderColor:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "color"

    const-string v32, "lf_chat_item_gender_male"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 271
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->isAnchor()Z

    move-result v29

    if-eqz v29, :cond_13

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "layout"

    const-string v32, "lf_chat_item_head_anchor"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_image"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .line 274
    .restart local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_user_default_avatar"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageDefault(Landroid/graphics/drawable/Drawable;)V

    .line 275
    const-string v29, "gd"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_user_avatar_round_background_male"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageRound(Landroid/graphics/drawable/Drawable;)V

    .line 280
    :goto_8
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v29

    const-string v30, "faceUrl"

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->getAnchorInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageUrl(Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_lv"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 282
    .restart local v13    # "lvIcon":Landroid/widget/ImageView;
    const-string v29, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_12

    .line 283
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_11

    .line 284
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 290
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_name"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 291
    .restart local v6    # "anchorName":Landroid/widget/TextView;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v29

    const-string v30, "nickName"

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->getAnchorInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_anchor"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setBackgroundColor(I)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mBottonSlider:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_user"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 333
    .end local v6    # "anchorName":Landroid/widget/TextView;
    .end local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadContainer:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGender:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v10, p1

    .line 335
    check-cast v10, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;

    .line 336
    .restart local v10    # "giftMessage":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;
    const-string v29, "g"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 337
    .restart local v9    # "giftId":Ljava/lang/String;
    const-string/jumbo v17, "xingmeng_gift_[0-9]{1,}"

    .line 338
    .restart local v17    # "reg":Ljava/lang/String;
    const-class v29, Landroid/text/SpannableString;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getGiftsDirPath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "xingmeng_gift_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getMessageDetail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/text/SpannableString;

    .line 339
    .local v18, "result":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    new-instance v12, Landroid/widget/AbsListView$LayoutParams;

    .end local v12    # "lp":Landroid/widget/AbsListView$LayoutParams;
    const/16 v29, -0x1

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v12, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 341
    .restart local v12    # "lp":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 278
    .end local v9    # "giftId":Ljava/lang/String;
    .end local v10    # "giftMessage":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;
    .end local v13    # "lvIcon":Landroid/widget/ImageView;
    .end local v17    # "reg":Ljava/lang/String;
    .end local v18    # "result":Landroid/text/SpannableString;
    .restart local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_user_avatar_round_background_female"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageRound(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 286
    .restart local v13    # "lvIcon":Landroid/widget/ImageView;
    :cond_11
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 288
    :cond_12
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 295
    .end local v13    # "lvIcon":Landroid/widget/ImageView;
    .end local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "layout"

    const-string v32, "lf_chat_item_head_user"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_user_lv"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 297
    .restart local v13    # "lvIcon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_user_lv"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 298
    .restart local v23    # "userLvIcon":Landroid/widget/ImageView;
    const-string v29, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_16

    .line 299
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_15

    .line 300
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 306
    :goto_b
    const-string v29, "l"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_18

    .line 307
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "l"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getUserLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_17

    .line 308
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "l"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getUserLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 314
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_user_name"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 315
    .restart local v24    # "userName":Landroid/widget/TextView;
    const-string v29, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 317
    invoke-virtual {v13}, Landroid/widget/ImageView;->getVisibility()I

    move-result v29

    if-nez v29, :cond_14

    .line 318
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 319
    .restart local v16    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v29, 0x3

    invoke-virtual {v13}, Landroid/widget/ImageView;->getId()I

    move-result v30

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 320
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    .end local v16    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_user"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setBackgroundColor(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mBottonSlider:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_anchor"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string/jumbo v32, "user_item_ward"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 327
    .restart local v25    # "ward":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->userIds:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const-string v30, "i"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_19

    .line 328
    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    .line 302
    .end local v24    # "userName":Landroid/widget/TextView;
    .end local v25    # "ward":Landroid/widget/ImageView;
    :cond_15
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b

    .line 304
    :cond_16
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b

    .line 310
    :cond_17
    const/16 v29, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 312
    :cond_18
    const/16 v29, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 330
    .restart local v24    # "userName":Landroid/widget/TextView;
    .restart local v25    # "ward":Landroid/widget/ImageView;
    :cond_19
    const/16 v29, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    .line 344
    .end local v11    # "giftP":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "lvIcon":Landroid/widget/ImageView;
    .end local v23    # "userLvIcon":Landroid/widget/ImageView;
    .end local v24    # "userName":Landroid/widget/TextView;
    .end local v25    # "ward":Landroid/widget/ImageView;
    :sswitch_2
    const-string v29, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mName:Ljava/lang/String;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    const/high16 v30, 0x42080000    # 34.0f

    invoke-static/range {v30 .. v30}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setHeight(I)V

    .line 346
    const-string v29, "gd"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_chat_item_gender_male_icon"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderColor:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "color"

    const-string v32, "lf_chat_item_gender_male"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 356
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_text_anchor_lv"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 357
    .local v5, "anchorLv":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_text_user_lv"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    .line 358
    .local v22, "userLv":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_text_welcome"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 359
    .local v28, "wel":Landroid/widget/TextView;
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    const-string v29, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_1c

    .line 361
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    :goto_e
    const-string v29, "l"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_1e

    .line 370
    const/16 v29, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-virtual/range {p1 .. p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getMessageDetail()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadContainer:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_anchor"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setBackgroundColor(I)V

    .line 381
    new-instance v12, Landroid/widget/AbsListView$LayoutParams;

    .end local v12    # "lp":Landroid/widget/AbsListView$LayoutParams;
    const/16 v29, -0x1

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v12, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 382
    .restart local v12    # "lp":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mBottonSlider:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_user"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string/jumbo v32, "user_item_ward"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 386
    .restart local v25    # "ward":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->userIds:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const-string v30, "i"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_20

    .line 387
    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 349
    .end local v5    # "anchorLv":Landroid/widget/ImageView;
    .end local v22    # "userLv":Landroid/widget/ImageView;
    .end local v25    # "ward":Landroid/widget/ImageView;
    .end local v28    # "wel":Landroid/widget/TextView;
    :cond_1a
    const-string v29, "gd"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1b

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_chat_item_gender_female_icon"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderColor:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "color"

    const-string v32, "lf_chat_item_gender_female"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 353
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_chat_item_gender_male_icon"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderColor:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "color"

    const-string v32, "lf_chat_item_gender_male"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 363
    .restart local v5    # "anchorLv":Landroid/widget/ImageView;
    .restart local v22    # "userLv":Landroid/widget/ImageView;
    .restart local v28    # "wel":Landroid/widget/TextView;
    :cond_1c
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_1d

    .line 364
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 367
    :goto_10
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 366
    :cond_1d
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10

    .line 372
    :cond_1e
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "l"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getUserLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_1f

    .line 373
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "l"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getUserLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 376
    :goto_11
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    .line 375
    :cond_1f
    const/16 v29, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_11

    .line 389
    .restart local v25    # "ward":Landroid/widget/ImageView;
    :cond_20
    const/16 v29, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 394
    .end local v5    # "anchorLv":Landroid/widget/ImageView;
    .end local v22    # "userLv":Landroid/widget/ImageView;
    .end local v25    # "ward":Landroid/widget/ImageView;
    .end local v28    # "wel":Landroid/widget/TextView;
    :sswitch_3
    const-string v29, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mName:Ljava/lang/String;

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    const/high16 v30, 0x42080000    # 34.0f

    invoke-static/range {v30 .. v30}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setHeight(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 397
    .local v19, "starP":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v29, 0x3f800000    # 1.0f

    invoke-static/range {v29 .. v29}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    sget-object v30, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 401
    const-string v29, "gd"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_21

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_chat_item_gender_male_icon"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderColor:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "color"

    const-string v32, "lf_chat_item_gender_male"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 411
    :goto_12
    const-string v29, "gf"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_23

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "layout"

    const-string v32, "lf_chat_item_head_anchor"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_image"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .line 414
    .restart local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setVisibility(I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_super_image"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 416
    .restart local v15    # "mSuperHeaderIcon":Landroid/widget/ImageView;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v29

    const-string v30, "drawable"

    const-string v31, "lf_chat_item_super_admin_icon"

    invoke-static/range {v29 .. v31}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 417
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_lv"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 419
    .restart local v13    # "lvIcon":Landroid/widget/ImageView;
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_name"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 421
    .restart local v6    # "anchorName":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_anchor"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setBackgroundColor(I)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mBottonSlider:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_user"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGender:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    const/16 v30, 0x4

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadContainer:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 426
    const-string v20, "livehouse_gift_star"

    .line 427
    .local v20, "starReg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v30, v0

    const-class v29, Landroid/text/SpannableString;

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getMessageDetail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/CharSequence;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    new-instance v12, Landroid/widget/AbsListView$LayoutParams;

    .end local v12    # "lp":Landroid/widget/AbsListView$LayoutParams;
    const/16 v29, -0x1

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v12, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 429
    .restart local v12    # "lp":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 404
    .end local v6    # "anchorName":Landroid/widget/TextView;
    .end local v13    # "lvIcon":Landroid/widget/ImageView;
    .end local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    .end local v15    # "mSuperHeaderIcon":Landroid/widget/ImageView;
    .end local v20    # "starReg":Ljava/lang/String;
    :cond_21
    const-string v29, "gd"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_22

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_chat_item_gender_female_icon"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderColor:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "color"

    const-string v32, "lf_chat_item_gender_female"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 408
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_chat_item_gender_male_icon"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderColor:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "color"

    const-string v32, "lf_chat_item_gender_male"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_12

    .line 432
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->isAnchor()Z

    move-result v29

    if-eqz v29, :cond_27

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "layout"

    const-string v32, "lf_chat_item_head_anchor"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_image"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .line 435
    .restart local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_user_default_avatar"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageDefault(Landroid/graphics/drawable/Drawable;)V

    .line 436
    const-string v29, "gd"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_24

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_user_avatar_round_background_male"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageRound(Landroid/graphics/drawable/Drawable;)V

    .line 441
    :goto_13
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v29

    const-string v30, "faceUrl"

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->getAnchorInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageUrl(Ljava/lang/String;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_lv"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 443
    .restart local v13    # "lvIcon":Landroid/widget/ImageView;
    const-string v29, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    .line 444
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_25

    .line 445
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 451
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_name"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 452
    .restart local v6    # "anchorName":Landroid/widget/TextView;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v29

    const-string v30, "nickName"

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->getAnchorInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_anchor"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setBackgroundColor(I)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mBottonSlider:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_user"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 499
    .end local v6    # "anchorName":Landroid/widget/TextView;
    .end local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadContainer:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGender:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 501
    const-string v20, "livehouse_gift_star"

    .line 502
    .restart local v20    # "starReg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v30, v0

    const-class v29, Landroid/text/SpannableString;

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getMessageDetail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/CharSequence;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    new-instance v12, Landroid/widget/AbsListView$LayoutParams;

    .end local v12    # "lp":Landroid/widget/AbsListView$LayoutParams;
    const/16 v29, -0x1

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v12, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 504
    .restart local v12    # "lp":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 439
    .end local v13    # "lvIcon":Landroid/widget/ImageView;
    .end local v20    # "starReg":Ljava/lang/String;
    .restart local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_user_avatar_round_background_female"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageRound(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_13

    .line 447
    .restart local v13    # "lvIcon":Landroid/widget/ImageView;
    :cond_25
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_14

    .line 449
    :cond_26
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_14

    .line 456
    .end local v13    # "lvIcon":Landroid/widget/ImageView;
    .end local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "layout"

    const-string v32, "lf_chat_item_head_user"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_user_lv"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 458
    .restart local v13    # "lvIcon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_user_lv"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 460
    .restart local v23    # "userLvIcon":Landroid/widget/ImageView;
    :try_start_2
    const-string v29, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2a

    .line 461
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_29

    .line 462
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 468
    :goto_16
    const-string v29, "l"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2c

    .line 469
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "l"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getUserLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_2b

    .line 470
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "l"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getUserLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 479
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_user_name"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 480
    .restart local v24    # "userName":Landroid/widget/TextView;
    const-string v29, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_28

    .line 482
    invoke-virtual {v13}, Landroid/widget/ImageView;->getVisibility()I

    move-result v29

    if-nez v29, :cond_28

    .line 483
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 484
    .restart local v16    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v29, 0x3

    invoke-virtual {v13}, Landroid/widget/ImageView;->getId()I

    move-result v30

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 485
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    .end local v16    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_user"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setBackgroundColor(I)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mBottonSlider:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_anchor"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string/jumbo v32, "user_item_ward"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    .line 492
    .local v26, "ward1":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->userIds:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const-string v30, "i"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2d

    .line 493
    const/16 v29, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_15

    .line 464
    .end local v24    # "userName":Landroid/widget/TextView;
    .end local v26    # "ward1":Landroid/widget/ImageView;
    :cond_29
    const/16 v29, 0x8

    :try_start_3
    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_16

    .line 476
    :catch_1
    move-exception v29

    goto/16 :goto_17

    .line 466
    :cond_2a
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_16

    .line 472
    :cond_2b
    const/16 v29, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_17

    .line 474
    :cond_2c
    const/16 v29, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_17

    .line 495
    .restart local v24    # "userName":Landroid/widget/TextView;
    .restart local v26    # "ward1":Landroid/widget/ImageView;
    :cond_2d
    const/16 v29, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_15

    .line 509
    .end local v13    # "lvIcon":Landroid/widget/ImageView;
    .end local v19    # "starP":Landroid/widget/LinearLayout$LayoutParams;
    .end local v23    # "userLvIcon":Landroid/widget/ImageView;
    .end local v24    # "userName":Landroid/widget/TextView;
    .end local v26    # "ward1":Landroid/widget/ImageView;
    :sswitch_4
    const-string v29, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mName:Ljava/lang/String;

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    const/high16 v30, 0x42280000    # 42.0f

    invoke-static/range {v30 .. v30}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setHeight(I)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 512
    .local v8, "chatPs":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v29, 0x3f800000    # 1.0f

    invoke-static/range {v29 .. v29}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v29

    move/from16 v0, v29

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    invoke-direct/range {p0 .. p0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->setGuardDetail()V

    .line 517
    const-string v29, "gd"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2e

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_chat_item_gender_male_icon"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderColor:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "color"

    const-string v32, "lf_chat_item_gender_male"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 527
    :goto_18
    invoke-virtual/range {p1 .. p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->isAnchor()Z

    move-result v29

    if-eqz v29, :cond_33

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "layout"

    const-string v32, "lf_chat_item_head_anchor"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_image"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/youku/laifeng/sdk/util/NetworkImageView;

    .line 530
    .restart local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_user_default_avatar"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageDefault(Landroid/graphics/drawable/Drawable;)V

    .line 531
    const-string v29, "gd"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_30

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_user_avatar_round_background_male"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageRound(Landroid/graphics/drawable/Drawable;)V

    .line 536
    :goto_19
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v29

    const-string v30, "faceUrl"

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->getAnchorInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageUrl(Ljava/lang/String;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_lv"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 538
    .restart local v13    # "lvIcon":Landroid/widget/ImageView;
    const-string v29, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_32

    .line 539
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_31

    .line 540
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 546
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_name"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 547
    .restart local v6    # "anchorName":Landroid/widget/TextView;
    const-string v29, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_anchor"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setBackgroundColor(I)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mBottonSlider:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_user"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 595
    .end local v6    # "anchorName":Landroid/widget/TextView;
    .end local v13    # "lvIcon":Landroid/widget/ImageView;
    .end local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadContainer:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGender:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 597
    new-instance v12, Landroid/widget/AbsListView$LayoutParams;

    .end local v12    # "lp":Landroid/widget/AbsListView$LayoutParams;
    const/16 v29, -0x1

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v12, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 598
    .restart local v12    # "lp":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 520
    :cond_2e
    const-string v29, "gd"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2f

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_chat_item_gender_female_icon"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderColor:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "color"

    const-string v32, "lf_chat_item_gender_female"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_18

    .line 524
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderIcon:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_chat_item_gender_male_icon"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mGenderColor:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "color"

    const-string v32, "lf_chat_item_gender_male"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_18

    .line 534
    .restart local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "drawable"

    const-string v32, "lf_user_avatar_round_background_female"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lcom/youku/laifeng/sdk/util/NetworkImageView;->setImageRound(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_19

    .line 542
    .restart local v13    # "lvIcon":Landroid/widget/ImageView;
    :cond_31
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1a

    .line 544
    :cond_32
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1a

    .line 552
    .end local v13    # "lvIcon":Landroid/widget/ImageView;
    .end local v14    # "mAnchorHeaderIcon":Lcom/youku/laifeng/sdk/util/NetworkImageView;
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "layout"

    const-string v32, "lf_chat_item_head_user"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_anchor_user_lv"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 554
    .local v4, "anchorIcon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_user_lv"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 556
    .restart local v23    # "userLvIcon":Landroid/widget/ImageView;
    :try_start_4
    const-string v29, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_36

    .line 557
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_35

    .line 558
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "al"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getAnchorLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 564
    :goto_1c
    const-string v29, "l"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_38

    .line 565
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "l"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getUserLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_37

    .line 566
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;

    move-result-object v29

    const-string v30, "l"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/youku/laifeng/libcuteroom/model/data/LevelStatic;->getUserLevelById(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 575
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string v32, "chat_item_head_user_name"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 576
    .restart local v24    # "userName":Landroid/widget/TextView;
    const-string v29, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mHeadView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v30

    const-string v31, "id"

    const-string/jumbo v32, "user_item_ward"

    invoke-static/range {v30 .. v32}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    .line 579
    .local v27, "wards":Landroid/widget/ImageView;
    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_34

    .line 582
    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v29

    if-nez v29, :cond_39

    .line 583
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 584
    .restart local v16    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v29, 0x3

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v30

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 585
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    .end local v16    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_34
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_user"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setBackgroundColor(I)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mBottonSlider:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v31

    const-string v32, "color"

    const-string v33, "lf_chat_item_bg_anchor"

    invoke-static/range {v31 .. v33}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_1b

    .line 560
    .end local v24    # "userName":Landroid/widget/TextView;
    .end local v27    # "wards":Landroid/widget/ImageView;
    :cond_35
    const/16 v29, 0x8

    :try_start_5
    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1c

    .line 572
    :catch_2
    move-exception v29

    goto/16 :goto_1d

    .line 562
    :cond_36
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1c

    .line 568
    :cond_37
    const/16 v29, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1d

    .line 570
    :cond_38
    const/16 v29, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1d

    .line 587
    .restart local v24    # "userName":Landroid/widget/TextView;
    .restart local v27    # "wards":Landroid/widget/ImageView;
    :cond_39
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 588
    .restart local v16    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v29, 0x3

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getId()I

    move-result v30

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 589
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1e

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method private setGuardDetail()V
    .locals 14

    .prologue
    const/4 v11, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 604
    const-string v0, ""

    .line 605
    .local v0, "ancherName":Ljava/lang/String;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 606
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v9

    const-string v10, "nickName"

    invoke-virtual {v9, v10}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->getAnchorInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 610
    .local v1, "ancherNameBuffer":Ljava/lang/StringBuffer;
    const-string v9, "\""

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 611
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    const-string v9, "\"  "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v9, "\u6211\u5728\u6b64\u5ba3\u8a93\uff0c\u8981\u4e00\u76f4\u5b88\u62a4\u7740"

    aput-object v9, v2, v12

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v13

    .line 615
    .local v2, "array":[Ljava/lang/String;
    new-array v4, v11, [I

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v9

    const-string v10, "color"

    const-string v11, "lf_chat_item_guard_bar_title_text"

    invoke-static {v9, v10, v11}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    aput v9, v4, v12

    .line 616
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v9

    const-string v10, "color"

    const-string v11, "lf_chat_item_gender_male"

    invoke-static {v9, v10, v11}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    aput v9, v4, v13

    .line 618
    .local v4, "colors":[I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 619
    .local v6, "sBuffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v9, v2

    if-ge v5, v9, :cond_1

    .line 620
    aget-object v9, v2, v5

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 623
    :cond_1
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .line 624
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 625
    .local v7, "sb":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    .line 626
    .local v3, "begin":I
    const/4 v5, 0x0

    :goto_1
    array-length v9, v2

    if-ge v5, v9, :cond_2

    .line 628
    aget-object v9, v2, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    .line 630
    .local v8, "textLength":I
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    iget-object v10, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatBg:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    aget v11, v4, v5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v10, v3, v8

    const/16 v11, 0x22

    invoke-virtual {v7, v9, v3, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 633
    add-int/2addr v3, v8

    .line 626
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 637
    .end local v8    # "textLength":I
    :cond_2
    iget-object v9, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->addImageSpan()V

    .line 640
    return-void
.end method


# virtual methods
.method public getMessage()Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mMessage:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTextString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 80
    const-string v0, ""

    .line 81
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mMessage:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getType()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    .line 82
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string/jumbo v1, "xingmeng_gift_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mMessage:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;->getType()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    .line 85
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, "livehouse_gift_star"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;->mChatDetail:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
