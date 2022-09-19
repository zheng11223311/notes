.class Lcom/youku/uplayer/PlayerChooser;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/uplayer/PlayerChooser$PlayerAlternative;
    }
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private mDMakers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/youku/uplayer/PlayerChooser$PlayerAlternative;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1224
    iput-object p1, p0, Lcom/youku/uplayer/PlayerChooser;->fileName:Ljava/lang/String;

    .line 1225
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/youku/uplayer/PlayerChooser;->mDMakers:Ljava/util/Vector;

    .line 1226
    return-void
.end method


# virtual methods
.method public addAlternative(Lcom/youku/uplayer/PlayerChooser$PlayerAlternative;)Lcom/youku/uplayer/PlayerChooser;
    .locals 1
    .param p1, "alter"    # Lcom/youku/uplayer/PlayerChooser$PlayerAlternative;

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/youku/uplayer/PlayerChooser;->mDMakers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1230
    return-object p0
.end method

.method public decide()V
    .locals 3

    .prologue
    .line 1234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/uplayer/PlayerChooser;->mDMakers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1235
    iget-object v1, p0, Lcom/youku/uplayer/PlayerChooser;->mDMakers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/uplayer/PlayerChooser$PlayerAlternative;

    iget-object v2, p0, Lcom/youku/uplayer/PlayerChooser;->fileName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/youku/uplayer/PlayerChooser$PlayerAlternative;->rule(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1236
    iget-object v1, p0, Lcom/youku/uplayer/PlayerChooser;->mDMakers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/uplayer/PlayerChooser$PlayerAlternative;

    invoke-interface {v1}, Lcom/youku/uplayer/PlayerChooser$PlayerAlternative;->action()V

    .line 1240
    :cond_0
    return-void

    .line 1234
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
