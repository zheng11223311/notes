.class public final enum Lio/rong/imkit/model/ConversationTypeFilter$Level;
.super Ljava/lang/Enum;
.source "ConversationTypeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/ConversationTypeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/imkit/model/ConversationTypeFilter$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/imkit/model/ConversationTypeFilter$Level;

.field public static final enum ALL:Lio/rong/imkit/model/ConversationTypeFilter$Level;

.field public static final enum CONVERSATION_TYPE:Lio/rong/imkit/model/ConversationTypeFilter$Level;

.field public static final enum NONE:Lio/rong/imkit/model/ConversationTypeFilter$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lio/rong/imkit/model/ConversationTypeFilter$Level;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/model/ConversationTypeFilter$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/rong/imkit/model/ConversationTypeFilter$Level;->ALL:Lio/rong/imkit/model/ConversationTypeFilter$Level;

    new-instance v0, Lio/rong/imkit/model/ConversationTypeFilter$Level;

    const-string v1, "CONVERSATION_TYPE"

    invoke-direct {v0, v1, v3}, Lio/rong/imkit/model/ConversationTypeFilter$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/rong/imkit/model/ConversationTypeFilter$Level;->CONVERSATION_TYPE:Lio/rong/imkit/model/ConversationTypeFilter$Level;

    new-instance v0, Lio/rong/imkit/model/ConversationTypeFilter$Level;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lio/rong/imkit/model/ConversationTypeFilter$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/rong/imkit/model/ConversationTypeFilter$Level;->NONE:Lio/rong/imkit/model/ConversationTypeFilter$Level;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lio/rong/imkit/model/ConversationTypeFilter$Level;

    sget-object v1, Lio/rong/imkit/model/ConversationTypeFilter$Level;->ALL:Lio/rong/imkit/model/ConversationTypeFilter$Level;

    aput-object v1, v0, v2

    sget-object v1, Lio/rong/imkit/model/ConversationTypeFilter$Level;->CONVERSATION_TYPE:Lio/rong/imkit/model/ConversationTypeFilter$Level;

    aput-object v1, v0, v3

    sget-object v1, Lio/rong/imkit/model/ConversationTypeFilter$Level;->NONE:Lio/rong/imkit/model/ConversationTypeFilter$Level;

    aput-object v1, v0, v4

    sput-object v0, Lio/rong/imkit/model/ConversationTypeFilter$Level;->$VALUES:[Lio/rong/imkit/model/ConversationTypeFilter$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/imkit/model/ConversationTypeFilter$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lio/rong/imkit/model/ConversationTypeFilter$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/ConversationTypeFilter$Level;

    return-object v0
.end method

.method public static values()[Lio/rong/imkit/model/ConversationTypeFilter$Level;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lio/rong/imkit/model/ConversationTypeFilter$Level;->$VALUES:[Lio/rong/imkit/model/ConversationTypeFilter$Level;

    invoke-virtual {v0}, [Lio/rong/imkit/model/ConversationTypeFilter$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/imkit/model/ConversationTypeFilter$Level;

    return-object v0
.end method
