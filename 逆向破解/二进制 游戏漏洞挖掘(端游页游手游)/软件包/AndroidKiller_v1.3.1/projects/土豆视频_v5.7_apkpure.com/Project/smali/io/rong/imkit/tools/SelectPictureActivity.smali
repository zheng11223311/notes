.class public Lio/rong/imkit/tools/SelectPictureActivity;
.super Landroid/app/Activity;
.source "SelectPictureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/tools/SelectPictureActivity$ViewHolder;,
        Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;
    }
.end annotation


# static fields
.field private static final EVENT_PREVIEW_SELECT:I = 0x1

.field private static final EVENT_PREVIEW_SEND:I = 0x0

.field public static final INTENT_MAX_NUM:Ljava/lang/String; = "intent_max_num"

.field public static final INTENT_SELECTED_PICTURE:Ljava/lang/String; = "intent_selected_picture"

.field private static MAX_NUM:I = 0x0

.field private static final TAKE_PICTURE:I = 0x208


# instance fields
.field mAdapter:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

.field private mButOK:Landroid/widget/Button;

.field private mButPreview:Landroid/widget/Button;

.field mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPicture:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x6

    sput v0, Lio/rong/imkit/tools/SelectPictureActivity;->MAX_NUM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/tools/SelectPictureActivity;->selectedPicture:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lio/rong/imkit/tools/SelectPictureActivity;->mHandler:Landroid/os/Handler;

    .line 218
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/tools/SelectPictureActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/SelectPictureActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lio/rong/imkit/tools/SelectPictureActivity;->pictures:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/imkit/tools/SelectPictureActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/SelectPictureActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lio/rong/imkit/tools/SelectPictureActivity;->selectedPicture:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/imkit/tools/SelectPictureActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/SelectPictureActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lio/rong/imkit/tools/SelectPictureActivity;->mButOK:Landroid/widget/Button;

    return-object v0
.end method

.method private getThumb()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Lio/rong/imkit/tools/SelectPictureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 268
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 269
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 270
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 273
    :cond_0
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_2
    return-object v1
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 78
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lio/rong/imkit/tools/SelectPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity;->mGridView:Landroid/widget/GridView;

    .line 79
    const v2, 0x1020019

    invoke-virtual {p0, v2}, Lio/rong/imkit/tools/SelectPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity;->mButOK:Landroid/widget/Button;

    .line 80
    const v2, 0x102001a

    invoke-virtual {p0, v2}, Lio/rong/imkit/tools/SelectPictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity;->mButPreview:Landroid/widget/Button;

    .line 82
    invoke-virtual {p0}, Lio/rong/imkit/tools/SelectPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_send_format:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "formatString":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity;->mButOK:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    new-instance v2, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

    invoke-direct {v2, p0}, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;-><init>(Lio/rong/imkit/tools/SelectPictureActivity;)V

    iput-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity;->mAdapter:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

    .line 87
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lio/rong/imkit/tools/SelectPictureActivity;->mAdapter:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity;->mButOK:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity;->mButPreview:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    invoke-virtual {p0}, Lio/rong/imkit/tools/SelectPictureActivity;->onBackPressed()V

    .line 286
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    return v4

    .line 98
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 99
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 100
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v1, "preData":Landroid/content/Intent;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 102
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 106
    :goto_1
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lio/rong/imkit/tools/SelectPictureActivity;->setResult(ILandroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lio/rong/imkit/tools/SelectPictureActivity;->finish()V

    goto :goto_0

    .line 104
    :cond_1
    const-string v2, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 111
    .end local v1    # "preData":Landroid/content/Intent;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 112
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lio/rong/imkit/tools/SelectPictureActivity;->selectedPicture:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 113
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity;->selectedPicture:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 114
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity;->selectedPicture:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity;->mAdapter:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 200
    if-nez p3, :cond_0

    .line 216
    :goto_0
    return-void

    .line 203
    :cond_0
    const-string v1, "BACK_RESULT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 204
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 205
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 206
    const-string v1, "BACK_RESULT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    iget-object v1, p0, Lio/rong/imkit/tools/SelectPictureActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 209
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 211
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 212
    .restart local v0    # "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 213
    const-string v1, "PREVIEW_RESULT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 214
    iget-object v1, p0, Lio/rong/imkit/tools/SelectPictureActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 228
    :pswitch_0
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity;->selectedPicture:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 229
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 230
    .local v0, "data":Landroid/content/Intent;
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity;->selectedPicture:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 231
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity;->selectedPicture:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 236
    :goto_1
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lio/rong/imkit/tools/SelectPictureActivity;->setResult(ILandroid/content/Intent;)V

    .line 237
    invoke-virtual {p0}, Lio/rong/imkit/tools/SelectPictureActivity;->finish()V

    goto :goto_0

    .line 233
    :cond_0
    const-string v2, "android.intent.extra.RETURN_RESULT"

    iget-object v3, p0, Lio/rong/imkit/tools/SelectPictureActivity;->selectedPicture:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 239
    .end local v0    # "data":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lio/rong/imkit/tools/SelectPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_notice_select_one_picture_at_last:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity;->selectedPicture:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 246
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/rong/imkit/tools/PreviewPictureActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v1, "preview":Landroid/content/Intent;
    const-string v2, "ArrayList"

    iget-object v3, p0, Lio/rong/imkit/tools/SelectPictureActivity;->selectedPicture:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 248
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/tools/SelectPictureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 250
    .end local v1    # "preview":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lio/rong/imkit/tools/SelectPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_notice_select_one_picture_at_last:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1020019
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/rong/imkit/tools/SelectPictureActivity;->requestWindowFeature(I)Z

    .line 70
    sget v0, Lio/rong/imkit/R$layout;->rc_ac_albums:I

    invoke-virtual {p0, v0}, Lio/rong/imkit/tools/SelectPictureActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lio/rong/imkit/tools/SelectPictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_max_num"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lio/rong/imkit/tools/SelectPictureActivity;->MAX_NUM:I

    .line 72
    invoke-direct {p0}, Lio/rong/imkit/tools/SelectPictureActivity;->getThumb()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/tools/SelectPictureActivity;->pictures:Ljava/util/List;

    .line 73
    iget-object v0, p0, Lio/rong/imkit/tools/SelectPictureActivity;->pictures:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 74
    invoke-direct {p0}, Lio/rong/imkit/tools/SelectPictureActivity;->initView()V

    .line 75
    return-void
.end method
