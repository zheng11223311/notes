.class public Lcom/youku/vo/IndexPageData;
.super Ljava/lang/Object;
.source "IndexPageData.java"


# instance fields
.field public channel_list_area:Lcom/youku/vo/ChannelListArea;

.field public comment:Ljava/lang/String;

.field public index_page_modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/IndexPageModuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public search_area:Lcom/youku/vo/SearchArea;

.field public top_slide_area:Lcom/youku/vo/IndexPageTopSlideArea;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "dataStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "dataObject":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 30
    return-object p1
.end method

.method public static parseIndexPageData(Ljava/lang/String;)Lcom/youku/vo/IndexPageData;
    .locals 1
    .param p0, "jString"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lcom/youku/vo/IndexPageData;

    invoke-direct {v0}, Lcom/youku/vo/IndexPageData;-><init>()V

    invoke-static {p0, v0}, Lcom/youku/vo/IndexPageData;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/IndexPageData;

    return-object v0
.end method
