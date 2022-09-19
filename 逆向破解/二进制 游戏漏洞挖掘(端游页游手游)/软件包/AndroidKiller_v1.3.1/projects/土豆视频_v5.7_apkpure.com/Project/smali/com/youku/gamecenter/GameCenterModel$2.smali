.class Lcom/youku/gamecenter/GameCenterModel$2;
.super Ljava/lang/Object;
.source "GameCenterModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameCenterModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/youku/gamecenter/data/GameInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameCenterModel;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameCenterModel;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/youku/gamecenter/GameCenterModel$2;->this$0:Lcom/youku/gamecenter/GameCenterModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/data/GameInfo;)I
    .locals 6
    .param p1, "lhs"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "rhs"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "dateFormat":Ljava/text/DateFormat;
    :try_start_0
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->last_modified:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 103
    .local v1, "dateTime1":Ljava/util/Date;
    iget-object v4, p2, Lcom/youku/gamecenter/data/GameInfo;->last_modified:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 104
    .local v2, "dateTime2":Ljava/util/Date;
    invoke-virtual {v2, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 108
    .end local v1    # "dateTime1":Ljava/util/Date;
    .end local v2    # "dateTime2":Ljava/util/Date;
    :goto_0
    return v4

    .line 105
    :catch_0
    move-exception v3

    .line 106
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 108
    iget v4, p1, Lcom/youku/gamecenter/data/GameInfo;->sort_state:I

    iget v5, p2, Lcom/youku/gamecenter/data/GameInfo;->sort_state:I

    sub-int/2addr v4, v5

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 96
    check-cast p1, Lcom/youku/gamecenter/data/GameInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/youku/gamecenter/data/GameInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/youku/gamecenter/GameCenterModel$2;->compare(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/data/GameInfo;)I

    move-result v0

    return v0
.end method
