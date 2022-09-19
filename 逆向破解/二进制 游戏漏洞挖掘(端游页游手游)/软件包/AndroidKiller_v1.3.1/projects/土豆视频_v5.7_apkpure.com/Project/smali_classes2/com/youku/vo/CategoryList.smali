.class public Lcom/youku/vo/CategoryList;
.super Ljava/lang/Object;
.source "CategoryList.java"


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCategoryList(Ljava/lang/String;)Lcom/youku/vo/CategoryList;
    .locals 1
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/youku/vo/CategoryList;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CategoryList;

    return-object v0
.end method
