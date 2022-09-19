.class public Lcom/youku/pushsdk/db/DBHelper$TableDefine;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/pushsdk/db/DBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TableDefine"
.end annotation


# static fields
.field public static final CREATE_TABLE_SQL:Ljava/lang/String; = "create table if not exists push_record(_id integer primary key autoincrement,topic varchar(20),msgid varchar(20),time timestamp)"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MSG_ID:Ljava/lang/String; = "msgid"

.field public static final TABLE_NAME:Ljava/lang/String; = "push_record"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final TOPIC:Ljava/lang/String; = "topic"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
