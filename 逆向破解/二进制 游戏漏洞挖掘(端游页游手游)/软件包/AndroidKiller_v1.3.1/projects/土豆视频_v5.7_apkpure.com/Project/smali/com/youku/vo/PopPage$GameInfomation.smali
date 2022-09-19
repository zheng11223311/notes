.class public Lcom/youku/vo/PopPage$GameInfomation;
.super Ljava/lang/Object;
.source "PopPage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/PopPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameInfomation"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5L


# instance fields
.field public gameOpenType:Ljava/lang/String;

.field public game_description:Ljava/lang/String;

.field public game_id:Ljava/lang/String;

.field public game_logo:Ljava/lang/String;

.field public game_name:Ljava/lang/String;

.field public game_package_name:Ljava/lang/String;

.field public game_type:Ljava/lang/String;

.field public game_type_name:Ljava/lang/String;

.field public game_url:Ljava/lang/String;

.field public game_version_code:Ljava/lang/String;

.field public game_version_name:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/PopPage;


# direct methods
.method public constructor <init>(Lcom/youku/vo/PopPage;)V
    .locals 1

    .prologue
    .line 25
    iput-object p1, p0, Lcom/youku/vo/PopPage$GameInfomation;->this$0:Lcom/youku/vo/PopPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "4"

    iput-object v0, p0, Lcom/youku/vo/PopPage$GameInfomation;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public genTargetType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    const-string v0, "download_game"

    iget-object v1, p0, Lcom/youku/vo/PopPage$GameInfomation;->game_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "download_game"

    iput-object v0, p0, Lcom/youku/vo/PopPage$GameInfomation;->gameOpenType:Ljava/lang/String;

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/youku/vo/PopPage$GameInfomation;->gameOpenType:Ljava/lang/String;

    return-object v0

    .line 56
    :cond_0
    const-string/jumbo v0, "show_details"

    iget-object v1, p0, Lcom/youku/vo/PopPage$GameInfomation;->game_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const-string/jumbo v0, "show_details"

    iput-object v0, p0, Lcom/youku/vo/PopPage$GameInfomation;->gameOpenType:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_1
    const-string/jumbo v0, "show_list"

    iget-object v1, p0, Lcom/youku/vo/PopPage$GameInfomation;->game_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    const-string/jumbo v0, "show_list"

    iput-object v0, p0, Lcom/youku/vo/PopPage$GameInfomation;->gameOpenType:Ljava/lang/String;

    goto :goto_0

    .line 61
    :cond_2
    const-string v0, "download_game"

    iput-object v0, p0, Lcom/youku/vo/PopPage$GameInfomation;->gameOpenType:Ljava/lang/String;

    goto :goto_0
.end method
