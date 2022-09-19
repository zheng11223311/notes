.class public Lcom/youku/gamecenter/data/GameDialogInfo;
.super Ljava/lang/Object;
.source "GameDialogInfo.java"


# instance fields
.field public mDownload_link:Ljava/lang/String;

.field public mIcon:Ljava/lang/String;

.field public mId:Ljava/lang/String;

.field public mIsYouku:Z

.field public mName:Ljava/lang/String;

.field public mOpenType:Ljava/lang/String;

.field public mPic_link:Ljava/lang/String;

.field public mPkg_id:Ljava/lang/String;

.field public mPkg_ver:I

.field public mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "pic_link"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "icon"    # Ljava/lang/String;
    .param p5, "download_link"    # Ljava/lang/String;
    .param p6, "pkg_id"    # Ljava/lang/String;
    .param p7, "pkg_ver"    # Ljava/lang/String;
    .param p8, "source"    # Ljava/lang/String;
    .param p9, "openType"    # Ljava/lang/String;
    .param p10, "isYouku"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mId:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mPic_link:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mName:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mIcon:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mDownload_link:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mPkg_id:Ljava/lang/String;

    .line 31
    invoke-direct {p0, p7}, Lcom/youku/gamecenter/data/GameDialogInfo;->getPackageVersion(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mPkg_ver:I

    .line 32
    iput-object p8, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mSource:Ljava/lang/String;

    .line 33
    iput-object p9, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mOpenType:Ljava/lang/String;

    .line 34
    iput-boolean p10, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mIsYouku:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "pic_link"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "icon"    # Ljava/lang/String;
    .param p5, "download_link"    # Ljava/lang/String;
    .param p6, "pkg_id"    # Ljava/lang/String;
    .param p7, "pkg_ver"    # Ljava/lang/String;
    .param p8, "source"    # Ljava/lang/String;
    .param p9, "isYouku"    # Z

    .prologue
    .line 18
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/youku/gamecenter/data/GameDialogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    return-void
.end method

.method private getPackageVersion(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageVersionCode"    # Ljava/lang/String;

    .prologue
    .line 39
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 43
    :goto_0
    return v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isValid()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    iget-object v2, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 72
    :cond_1
    :goto_0
    return v0

    .line 50
    :cond_2
    iget-object v2, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mId:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mPic_link:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mPic_link:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    .line 55
    goto :goto_0

    .line 57
    :cond_4
    iget-object v2, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    .line 58
    goto :goto_0

    .line 60
    :cond_6
    iget-object v2, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mIcon:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mIcon:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    move v0, v1

    .line 61
    goto :goto_0

    .line 63
    :cond_8
    iget-object v2, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mDownload_link:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mDownload_link:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    move v0, v1

    .line 64
    goto :goto_0

    .line 66
    :cond_a
    iget-object v2, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mPkg_id:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mPkg_id:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    move v0, v1

    .line 67
    goto :goto_0

    .line 69
    :cond_c
    iget-object v2, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mSource:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/youku/gamecenter/data/GameDialogInfo;->mSource:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_d
    move v0, v1

    .line 70
    goto :goto_0
.end method
