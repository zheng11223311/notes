.class public Lcom/youku/gamecenter/present/PresentInfo;
.super Ljava/lang/Object;
.source "PresentInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/youku/gamecenter/data/IResponseable;


# static fields
.field public static final PRESENT_DETAILS:Ljava/lang/String; = "1"

.field public static final PRESENT_GAME:Ljava/lang/String; = "2"

.field public static final PRESENT_GET_FAILED:Ljava/lang/String; = "0"

.field public static final PRESENT_GET_SUCCESS:Ljava/lang/String; = "1"

.field public static final PRESENT_TOTAL:Ljava/lang/String; = "0"

.field private static final serialVersionUID:J = -0x5df289c11e92c1ceL


# instance fields
.field public app_icon:Ljava/lang/String;

.field public app_id:Ljava/lang/String;

.field public app_name:Ljava/lang/String;

.field public app_package:Ljava/lang/String;

.field public app_tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;",
            ">;"
        }
    .end annotation
.end field

.field public app_type:Ljava/lang/String;

.field public app_url:Ljava/lang/String;

.field public app_vercode:I

.field public app_version:Ljava/lang/String;

.field public available_num:I

.field public available_ratio:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public end_time:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public instruction:Ljava/lang/String;

.field public int_progress:I

.field public name:Ljava/lang/String;

.field public new_count:I

.field public present_code:Ljava/lang/String;

.field public start_time:Ljava/lang/String;

.field public status:Lcom/youku/gamecenter/present/PresentStatus;

.field public total_num:I

.field public use_end_time:Ljava/lang/String;

.field public use_start_time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_GET:Lcom/youku/gamecenter/present/PresentStatus;

    iput-object v0, p0, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/present/PresentInfo;->app_tags:Ljava/util/List;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/present/PresentInfo;->present_code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppTags()Ljava/lang/String;
    .locals 6

    .prologue
    .line 54
    iget-object v4, p0, Lcom/youku/gamecenter/present/PresentInfo;->app_tags:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/youku/gamecenter/present/PresentInfo;->app_tags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 55
    :cond_0
    const-string v4, ""

    .line 71
    :goto_0
    return-object v4

    .line 58
    :cond_1
    iget-object v4, p0, Lcom/youku/gamecenter/present/PresentInfo;->app_tags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 59
    .local v2, "size":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 61
    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_2

    const-string v3, ""

    .line 62
    .local v3, "split":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/youku/gamecenter/present/PresentInfo;->app_tags:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;

    iget-object v4, v4, Lcom/youku/gamecenter/data/CategoryInfo$TagKeyValue;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    .end local v3    # "split":Ljava/lang/String;
    :cond_2
    const-string v3, ","

    goto :goto_2

    .line 67
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "utf-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 68
    :catch_0
    move-exception v4

    .line 71
    const-string v4, ""

    goto :goto_0
.end method
