.class public Lcom/luajava/LuaState;
.super Ljava/lang/Object;
.source "LuaState.java"


# static fields
.field private static final LUAJAVA_LIB:Ljava/lang/String; = "luajava"

.field public static final LUA_ERRERR:Ljava/lang/Integer;

.field public static final LUA_ERRMEM:Ljava/lang/Integer;

.field public static final LUA_ERRRUN:Ljava/lang/Integer;

.field public static final LUA_ERRSYNTAX:Ljava/lang/Integer;

.field public static final LUA_GCCOLLECT:Ljava/lang/Integer;

.field public static final LUA_GCCOUNT:Ljava/lang/Integer;

.field public static final LUA_GCCOUNTB:Ljava/lang/Integer;

.field public static final LUA_GCRESTART:Ljava/lang/Integer;

.field public static final LUA_GCSETPAUSE:Ljava/lang/Integer;

.field public static final LUA_GCSETSTEPMUL:Ljava/lang/Integer;

.field public static final LUA_GCSTEP:Ljava/lang/Integer;

.field public static final LUA_GCSTOP:Ljava/lang/Integer;

.field public static final LUA_GLOBALSINDEX:Ljava/lang/Integer;

.field public static final LUA_MULTRET:Ljava/lang/Integer;

.field public static final LUA_REGISTRYINDEX:Ljava/lang/Integer;

.field public static final LUA_TBOOLEAN:Ljava/lang/Integer;

.field public static final LUA_TFUNCTION:Ljava/lang/Integer;

.field public static final LUA_TLIGHTUSERDATA:Ljava/lang/Integer;

.field public static final LUA_TNIL:Ljava/lang/Integer;

.field public static final LUA_TNONE:Ljava/lang/Integer;

.field public static final LUA_TNUMBER:Ljava/lang/Integer;

.field public static final LUA_TSTRING:Ljava/lang/Integer;

.field public static final LUA_TTABLE:Ljava/lang/Integer;

.field public static final LUA_TTHREAD:Ljava/lang/Integer;

.field public static final LUA_TUSERDATA:Ljava/lang/Integer;

.field public static final LUA_YIELD:Ljava/lang/Integer;


# instance fields
.field private luaState:Lcom/luajava/CPtr;

.field private stateId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 38
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, -0x2712

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_GLOBALSINDEX:Ljava/lang/Integer;

    .line 39
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, -0x2710

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_REGISTRYINDEX:Ljava/lang/Integer;

    .line 41
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_TNONE:Ljava/lang/Integer;

    .line 42
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_TNIL:Ljava/lang/Integer;

    .line 43
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_TBOOLEAN:Ljava/lang/Integer;

    .line 44
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_TLIGHTUSERDATA:Ljava/lang/Integer;

    .line 45
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_TNUMBER:Ljava/lang/Integer;

    .line 46
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_TSTRING:Ljava/lang/Integer;

    .line 47
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_TTABLE:Ljava/lang/Integer;

    .line 48
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_TFUNCTION:Ljava/lang/Integer;

    .line 49
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_TUSERDATA:Ljava/lang/Integer;

    .line 50
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_TTHREAD:Ljava/lang/Integer;

    .line 56
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_MULTRET:Ljava/lang/Integer;

    .line 64
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_ERRRUN:Ljava/lang/Integer;

    .line 69
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_YIELD:Ljava/lang/Integer;

    .line 74
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_ERRSYNTAX:Ljava/lang/Integer;

    .line 80
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_ERRMEM:Ljava/lang/Integer;

    .line 85
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_ERRERR:Ljava/lang/Integer;

    .line 92
    const-string v0, "luajava"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 219
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_GCSTOP:Ljava/lang/Integer;

    .line 220
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_GCRESTART:Ljava/lang/Integer;

    .line 221
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_GCCOLLECT:Ljava/lang/Integer;

    .line 222
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_GCCOUNT:Ljava/lang/Integer;

    .line 223
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_GCCOUNTB:Ljava/lang/Integer;

    .line 224
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_GCSTEP:Ljava/lang/Integer;

    .line 225
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_GCSETPAUSE:Ljava/lang/Integer;

    .line 226
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/luajava/LuaState;->LUA_GCSETSTEPMUL:Ljava/lang/Integer;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "stateId"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-direct {p0}, Lcom/luajava/LuaState;->_open()Lcom/luajava/CPtr;

    move-result-object v0

    iput-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    .line 106
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->luajava_open(Lcom/luajava/CPtr;I)V

    .line 107
    iput p1, p0, Lcom/luajava/LuaState;->stateId:I

    .line 108
    return-void
.end method

.method protected constructor <init>(Lcom/luajava/CPtr;)V
    .locals 1
    .param p1, "luaState"    # Lcom/luajava/CPtr;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    .line 117
    invoke-static {p0}, Lcom/luajava/LuaStateFactory;->insertLuaState(Lcom/luajava/LuaState;)I

    move-result v0

    iput v0, p0, Lcom/luajava/LuaState;->stateId:I

    .line 118
    iget v0, p0, Lcom/luajava/LuaState;->stateId:I

    invoke-direct {p0, p1, v0}, Lcom/luajava/LuaState;->luajava_open(Lcom/luajava/CPtr;I)V

    .line 119
    return-void
.end method

.method private synchronized native declared-synchronized _LargError(Lcom/luajava/CPtr;ILjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LcallMeta(Lcom/luajava/CPtr;ILjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LcheckAny(Lcom/luajava/CPtr;I)V
.end method

.method private synchronized native declared-synchronized _LcheckInteger(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _LcheckNumber(Lcom/luajava/CPtr;I)D
.end method

.method private synchronized native declared-synchronized _LcheckStack(Lcom/luajava/CPtr;ILjava/lang/String;)V
.end method

.method private synchronized native declared-synchronized _LcheckString(Lcom/luajava/CPtr;I)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _LcheckType(Lcom/luajava/CPtr;II)V
.end method

.method private synchronized native declared-synchronized _LdoFile(Lcom/luajava/CPtr;Ljava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LdoString(Lcom/luajava/CPtr;Ljava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LfindTable(Lcom/luajava/CPtr;ILjava/lang/String;I)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _LgetMetaField(Lcom/luajava/CPtr;ILjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LgetMetatable(Lcom/luajava/CPtr;Ljava/lang/String;)V
.end method

.method private synchronized native declared-synchronized _LgetN(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _Lgsub(Lcom/luajava/CPtr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _LloadBuffer(Lcom/luajava/CPtr;[BJLjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LloadFile(Lcom/luajava/CPtr;Ljava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LloadString(Lcom/luajava/CPtr;Ljava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LnewMetatable(Lcom/luajava/CPtr;Ljava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LoptInteger(Lcom/luajava/CPtr;II)I
.end method

.method private synchronized native declared-synchronized _LoptNumber(Lcom/luajava/CPtr;ID)D
.end method

.method private synchronized native declared-synchronized _LoptString(Lcom/luajava/CPtr;ILjava/lang/String;)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _Lref(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _LsetN(Lcom/luajava/CPtr;II)V
.end method

.method private synchronized native declared-synchronized _Ltyperror(Lcom/luajava/CPtr;ILjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LunRef(Lcom/luajava/CPtr;II)V
.end method

.method private synchronized native declared-synchronized _Lwhere(Lcom/luajava/CPtr;I)V
.end method

.method private synchronized native declared-synchronized _call(Lcom/luajava/CPtr;II)V
.end method

.method private synchronized native declared-synchronized _checkStack(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _close(Lcom/luajava/CPtr;)V
.end method

.method private synchronized native declared-synchronized _concat(Lcom/luajava/CPtr;I)V
.end method

.method private synchronized native declared-synchronized _createTable(Lcom/luajava/CPtr;II)V
.end method

.method private synchronized native declared-synchronized _equal(Lcom/luajava/CPtr;II)I
.end method

.method private synchronized native declared-synchronized _error(Lcom/luajava/CPtr;)I
.end method

.method private synchronized native declared-synchronized _gc(Lcom/luajava/CPtr;II)I
.end method

.method private synchronized native declared-synchronized _getFEnv(Lcom/luajava/CPtr;I)V
.end method

.method private synchronized native declared-synchronized _getField(Lcom/luajava/CPtr;ILjava/lang/String;)V
.end method

.method private synchronized native declared-synchronized _getGcCount(Lcom/luajava/CPtr;)I
.end method

.method private synchronized native declared-synchronized _getGlobal(Lcom/luajava/CPtr;Ljava/lang/String;)V
.end method

.method private synchronized native declared-synchronized _getMetaTable(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _getObjectFromUserdata(Lcom/luajava/CPtr;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _getTable(Lcom/luajava/CPtr;I)V
.end method

.method private synchronized native declared-synchronized _getTop(Lcom/luajava/CPtr;)I
.end method

.method private synchronized native declared-synchronized _insert(Lcom/luajava/CPtr;I)V
.end method

.method private synchronized native declared-synchronized _isBoolean(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _isCFunction(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _isFunction(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _isJavaFunction(Lcom/luajava/CPtr;I)Z
.end method

.method private synchronized native declared-synchronized _isNil(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _isNone(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _isNoneOrNil(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _isNumber(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _isObject(Lcom/luajava/CPtr;I)Z
.end method

.method private synchronized native declared-synchronized _isString(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _isTable(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _isThread(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _isUserdata(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _lessthan(Lcom/luajava/CPtr;II)I
.end method

.method private synchronized native declared-synchronized _newTable(Lcom/luajava/CPtr;)V
.end method

.method private synchronized native declared-synchronized _newthread(Lcom/luajava/CPtr;)Lcom/luajava/CPtr;
.end method

.method private synchronized native declared-synchronized _next(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _objlen(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _open()Lcom/luajava/CPtr;
.end method

.method private synchronized native declared-synchronized _openBase(Lcom/luajava/CPtr;)V
.end method

.method private synchronized native declared-synchronized _openDebug(Lcom/luajava/CPtr;)V
.end method

.method private synchronized native declared-synchronized _openIo(Lcom/luajava/CPtr;)V
.end method

.method private synchronized native declared-synchronized _openLibs(Lcom/luajava/CPtr;)V
.end method

.method private synchronized native declared-synchronized _openMath(Lcom/luajava/CPtr;)V
.end method

.method private synchronized native declared-synchronized _openOs(Lcom/luajava/CPtr;)V
.end method

.method private synchronized native declared-synchronized _openPackage(Lcom/luajava/CPtr;)V
.end method

.method private synchronized native declared-synchronized _openString(Lcom/luajava/CPtr;)V
.end method

.method private synchronized native declared-synchronized _openTable(Lcom/luajava/CPtr;)V
.end method

.method private synchronized native declared-synchronized _pcall(Lcom/luajava/CPtr;III)I
.end method

.method private synchronized native declared-synchronized _pop(Lcom/luajava/CPtr;I)V
.end method

.method private synchronized native declared-synchronized _pushBoolean(Lcom/luajava/CPtr;I)V
.end method

.method private synchronized native declared-synchronized _pushInteger(Lcom/luajava/CPtr;I)V
.end method

.method private synchronized native declared-synchronized _pushJavaFunction(Lcom/luajava/CPtr;Lcom/luajava/JavaFunction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _pushJavaObject(Lcom/luajava/CPtr;Ljava/lang/Object;)V
.end method

.method private synchronized native declared-synchronized _pushNil(Lcom/luajava/CPtr;)V
.end method

.method private synchronized native declared-synchronized _pushNumber(Lcom/luajava/CPtr;D)V
.end method

.method private synchronized native declared-synchronized _pushString(Lcom/luajava/CPtr;Ljava/lang/String;)V
.end method

.method private synchronized native declared-synchronized _pushString(Lcom/luajava/CPtr;[BI)V
.end method

.method private synchronized native declared-synchronized _pushValue(Lcom/luajava/CPtr;I)V
.end method

.method private synchronized native declared-synchronized _rawGet(Lcom/luajava/CPtr;I)V
.end method

.method private synchronized native declared-synchronized _rawGetI(Lcom/luajava/CPtr;II)V
.end method

.method private synchronized native declared-synchronized _rawSet(Lcom/luajava/CPtr;I)V
.end method

.method private synchronized native declared-synchronized _rawSetI(Lcom/luajava/CPtr;II)V
.end method

.method private synchronized native declared-synchronized _rawequal(Lcom/luajava/CPtr;II)I
.end method

.method private synchronized native declared-synchronized _remove(Lcom/luajava/CPtr;I)V
.end method

.method private synchronized native declared-synchronized _replace(Lcom/luajava/CPtr;I)V
.end method

.method private synchronized native declared-synchronized _resume(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _setFEnv(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _setField(Lcom/luajava/CPtr;ILjava/lang/String;)V
.end method

.method private synchronized native declared-synchronized _setGlobal(Lcom/luajava/CPtr;Ljava/lang/String;)V
.end method

.method private synchronized native declared-synchronized _setMetaTable(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _setTable(Lcom/luajava/CPtr;I)V
.end method

.method private synchronized native declared-synchronized _setTop(Lcom/luajava/CPtr;I)V
.end method

.method private synchronized native declared-synchronized _status(Lcom/luajava/CPtr;)I
.end method

.method private synchronized native declared-synchronized _strlen(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _toBoolean(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _toInteger(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _toNumber(Lcom/luajava/CPtr;I)D
.end method

.method private synchronized native declared-synchronized _toString(Lcom/luajava/CPtr;I)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _toThread(Lcom/luajava/CPtr;I)Lcom/luajava/CPtr;
.end method

.method private synchronized native declared-synchronized _type(Lcom/luajava/CPtr;I)I
.end method

.method private synchronized native declared-synchronized _typeName(Lcom/luajava/CPtr;I)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _xmove(Lcom/luajava/CPtr;Lcom/luajava/CPtr;I)V
.end method

.method private synchronized native declared-synchronized _yield(Lcom/luajava/CPtr;I)I
.end method

.method public static convertLuaNumber(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;
    .locals 4
    .param p0, "db"    # Ljava/lang/Double;
    .param p1, "retType"    # Ljava/lang/Class;

    .prologue
    .line 1110
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1112
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 1114
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, v0

    .line 1167
    .end local p0    # "db":Ljava/lang/Double;
    :cond_0
    :goto_0
    return-object p0

    .line 1116
    .restart local p0    # "db":Ljava/lang/Double;
    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 1118
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object p0, v0

    goto :goto_0

    .line 1120
    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 1122
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    move-object p0, v0

    goto :goto_0

    .line 1124
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    .line 1128
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 1130
    new-instance v0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Double;->byteValue()B

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    move-object p0, v0

    goto :goto_0

    .line 1132
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a

    .line 1134
    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Double;->shortValue()S

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    move-object p0, v0

    goto :goto_0

    .line 1137
    :cond_5
    const-class v0, Ljava/lang/Number;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1140
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1142
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, v0

    goto :goto_0

    .line 1144
    :cond_6
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1146
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object p0, v0

    goto :goto_0

    .line 1148
    :cond_7
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1150
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    move-object p0, v0

    goto/16 :goto_0

    .line 1152
    :cond_8
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1158
    new-instance v0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Double;->byteValue()B

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    move-object p0, v0

    goto/16 :goto_0

    .line 1160
    :cond_9
    const-class v0, Ljava/lang/Short;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1162
    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Double;->shortValue()S

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    move-object p0, v0

    goto/16 :goto_0

    .line 1167
    :cond_a
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method private synchronized native declared-synchronized luajava_open(Lcom/luajava/CPtr;I)V
.end method


# virtual methods
.method public LargError(ILjava/lang/String;)I
    .locals 1
    .param p1, "numArg"    # I
    .param p2, "extraMsg"    # Ljava/lang/String;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_LargError(Lcom/luajava/CPtr;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LcallMeta(ILjava/lang/String;)I
    .locals 1
    .param p1, "obj"    # I
    .param p2, "e"    # Ljava/lang/String;

    .prologue
    .line 657
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_LcallMeta(Lcom/luajava/CPtr;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LcheckAny(I)V
    .locals 1
    .param p1, "nArg"    # I

    .prologue
    .line 712
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_LcheckAny(Lcom/luajava/CPtr;I)V

    .line 713
    return-void
.end method

.method public LcheckInteger(I)I
    .locals 1
    .param p1, "numArg"    # I

    .prologue
    .line 692
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_LcheckInteger(Lcom/luajava/CPtr;I)I

    move-result v0

    return v0
.end method

.method public LcheckNumber(I)D
    .locals 2
    .param p1, "numArg"    # I

    .prologue
    .line 682
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_LcheckNumber(Lcom/luajava/CPtr;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public LcheckStack(ILjava/lang/String;)V
    .locals 1
    .param p1, "sz"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_LcheckStack(Lcom/luajava/CPtr;ILjava/lang/String;)V

    .line 703
    return-void
.end method

.method public LcheckString(I)Ljava/lang/String;
    .locals 1
    .param p1, "numArg"    # I

    .prologue
    .line 672
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_LcheckString(Lcom/luajava/CPtr;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LcheckType(II)V
    .locals 1
    .param p1, "nArg"    # I
    .param p2, "t"    # I

    .prologue
    .line 707
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_LcheckType(Lcom/luajava/CPtr;II)V

    .line 708
    return-void
.end method

.method public LdoFile(Ljava/lang/String;)I
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_LdoFile(Lcom/luajava/CPtr;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LdoString(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_LdoString(Lcom/luajava/CPtr;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LfindTable(ILjava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I
    .param p2, "fname"    # Ljava/lang/String;
    .param p3, "szhint"    # I

    .prologue
    .line 772
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/luajava/LuaState;->_LfindTable(Lcom/luajava/CPtr;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LgetMetaField(ILjava/lang/String;)I
    .locals 1
    .param p1, "obj"    # I
    .param p2, "e"    # Ljava/lang/String;

    .prologue
    .line 652
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_LgetMetaField(Lcom/luajava/CPtr;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LgetMetatable(Ljava/lang/String;)V
    .locals 1
    .param p1, "tName"    # Ljava/lang/String;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_LgetMetatable(Lcom/luajava/CPtr;Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method public LgetN(I)I
    .locals 1
    .param p1, "t"    # I

    .prologue
    .line 742
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_LgetN(Lcom/luajava/CPtr;I)I

    move-result v0

    return v0
.end method

.method public Lgsub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;
    .param p3, "r"    # Ljava/lang/String;

    .prologue
    .line 767
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/luajava/LuaState;->_Lgsub(Lcom/luajava/CPtr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LloadBuffer([BLjava/lang/String;)I
    .locals 7
    .param p1, "buff"    # [B
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 762
    iget-object v2, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    array-length v0, p1

    int-to-long v4, v0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/luajava/LuaState;->_LloadBuffer(Lcom/luajava/CPtr;[BJLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LloadFile(Ljava/lang/String;)I
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 752
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_LloadFile(Lcom/luajava/CPtr;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LloadString(Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 757
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_LloadString(Lcom/luajava/CPtr;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LnewMetatable(Ljava/lang/String;)I
    .locals 1
    .param p1, "tName"    # Ljava/lang/String;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_LnewMetatable(Lcom/luajava/CPtr;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LoptInteger(II)I
    .locals 1
    .param p1, "numArg"    # I
    .param p2, "def"    # I

    .prologue
    .line 697
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_LoptInteger(Lcom/luajava/CPtr;II)I

    move-result v0

    return v0
.end method

.method public LoptNumber(ID)D
    .locals 2
    .param p1, "numArg"    # I
    .param p2, "def"    # D

    .prologue
    .line 687
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/luajava/LuaState;->_LoptNumber(Lcom/luajava/CPtr;ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public LoptString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "numArg"    # I
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_LoptString(Lcom/luajava/CPtr;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Lref(I)I
    .locals 1
    .param p1, "t"    # I

    .prologue
    .line 732
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_Lref(Lcom/luajava/CPtr;I)I

    move-result v0

    return v0
.end method

.method public LsetN(II)V
    .locals 1
    .param p1, "t"    # I
    .param p2, "n"    # I

    .prologue
    .line 747
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_LsetN(Lcom/luajava/CPtr;II)V

    .line 748
    return-void
.end method

.method public Ltyperror(ILjava/lang/String;)I
    .locals 1
    .param p1, "nArg"    # I
    .param p2, "tName"    # Ljava/lang/String;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_Ltyperror(Lcom/luajava/CPtr;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LunRef(II)V
    .locals 1
    .param p1, "t"    # I
    .param p2, "ref"    # I

    .prologue
    .line 737
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_LunRef(Lcom/luajava/CPtr;II)V

    .line 738
    return-void
.end method

.method public Lwhere(I)V
    .locals 1
    .param p1, "lvl"    # I

    .prologue
    .line 727
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_Lwhere(Lcom/luajava/CPtr;I)V

    .line 728
    return-void
.end method

.method public call(II)V
    .locals 1
    .param p1, "nArgs"    # I
    .param p2, "nResults"    # I

    .prologue
    .line 587
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_call(Lcom/luajava/CPtr;II)V

    .line 588
    return-void
.end method

.method public checkStack(I)I
    .locals 1
    .param p1, "sz"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_checkStack(Lcom/luajava/CPtr;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/luajava/LuaState;->stateId:I

    invoke-static {v0}, Lcom/luajava/LuaStateFactory;->removeLuaState(I)V

    .line 127
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_close(Lcom/luajava/CPtr;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public concat(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 633
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_concat(Lcom/luajava/CPtr;I)V

    .line 634
    return-void
.end method

.method public createTable(II)V
    .locals 1
    .param p1, "narr"    # I
    .param p2, "nrec"    # I

    .prologue
    .line 532
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_createTable(Lcom/luajava/CPtr;II)V

    .line 533
    return-void
.end method

.method public dumpStack()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1171
    invoke-virtual {p0}, Lcom/luajava/LuaState;->getTop()I

    move-result v1

    .line 1172
    .local v1, "n":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1173
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 1174
    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->type(I)I

    move-result v3

    .line 1175
    .local v3, "t":I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    sget-object v4, Lcom/luajava/LuaState;->LUA_TNUMBER:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1177
    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1180
    :cond_0
    :goto_1
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1178
    :cond_1
    sget-object v4, Lcom/luajava/LuaState;->LUA_TSTRING:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1179
    const-string v4, " = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1182
    .end local v3    # "t":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public equal(II)I
    .locals 1
    .param p1, "idx1"    # I
    .param p2, "idx2"    # I

    .prologue
    .line 422
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_equal(Lcom/luajava/CPtr;II)I

    move-result v0

    return v0
.end method

.method public error()I
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_error(Lcom/luajava/CPtr;)I

    move-result v0

    return v0
.end method

.method public gc(II)I
    .locals 1
    .param p1, "what"    # I
    .param p2, "data"    # I

    .prologue
    .line 613
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_gc(Lcom/luajava/CPtr;II)I

    move-result v0

    return v0
.end method

.method public getCPtrPeer()J
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-virtual {v0}, Lcom/luajava/CPtr;->getPeer()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getFEnv(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 548
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_getFEnv(Lcom/luajava/CPtr;I)V

    .line 549
    return-void
.end method

.method public getField(ILjava/lang/String;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "k"    # Ljava/lang/String;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_getField(Lcom/luajava/CPtr;ILjava/lang/String;)V

    .line 518
    return-void
.end method

.method public getGcCount()I
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_getGcCount(Lcom/luajava/CPtr;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getGlobal(Ljava/lang/String;)V
    .locals 1
    .param p1, "global"    # Ljava/lang/String;

    .prologue
    .line 787
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_getGlobal(Lcom/luajava/CPtr;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    monitor-exit p0

    return-void

    .line 787
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLuaObject(I)Lcom/luajava/LuaObject;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1095
    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p0, p1}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaState;I)V

    return-object v0
.end method

.method public getLuaObject(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/luajava/LuaObject;
    .locals 4
    .param p1, "parent"    # Lcom/luajava/LuaObject;
    .param p2, "name"    # Lcom/luajava/LuaObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 1080
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getCPtrPeer()J

    move-result-wide v0

    iget-object v2, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-virtual {v2}, Lcom/luajava/CPtr;->getPeer()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getCPtrPeer()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/luajava/LuaState;->getCPtrPeer()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1082
    :cond_0
    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Object must have the same LuaState as the parent!"

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1084
    :cond_1
    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V

    return-object v0
.end method

.method public getLuaObject(Lcom/luajava/LuaObject;Ljava/lang/Number;)Lcom/luajava/LuaObject;
    .locals 4
    .param p1, "parent"    # Lcom/luajava/LuaObject;
    .param p2, "name"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 1064
    iget-object v0, p1, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getCPtrPeer()J

    move-result-wide v0

    iget-object v2, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-virtual {v2}, Lcom/luajava/CPtr;->getPeer()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1065
    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Object must have the same LuaState as the parent!"

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1067
    :cond_0
    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaObject;Ljava/lang/Number;)V

    return-object v0
.end method

.method public getLuaObject(Lcom/luajava/LuaObject;Ljava/lang/String;)Lcom/luajava/LuaObject;
    .locals 4
    .param p1, "parent"    # Lcom/luajava/LuaObject;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 1048
    iget-object v0, p1, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getCPtrPeer()J

    move-result-wide v0

    iget-object v2, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-virtual {v2}, Lcom/luajava/CPtr;->getPeer()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1049
    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Object must have the same LuaState as the parent!"

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1051
    :cond_0
    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaObject;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;
    .locals 1
    .param p1, "globalName"    # Ljava/lang/String;

    .prologue
    .line 1035
    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p0, p1}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaState;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetaTable(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 543
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_getMetaTable(Lcom/luajava/CPtr;I)I

    move-result v0

    return v0
.end method

.method public getObjectFromUserdata(I)Ljava/lang/Object;
    .locals 1
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 891
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_getObjectFromUserdata(Lcom/luajava/CPtr;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTable(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 512
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_getTable(Lcom/luajava/CPtr;I)V

    .line 513
    return-void
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_getTop(Lcom/luajava/CPtr;)I

    move-result v0

    return v0
.end method

.method public insert(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_insert(Lcom/luajava/CPtr;I)V

    .line 336
    return-void
.end method

.method public isBoolean(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_isBoolean(Lcom/luajava/CPtr;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCFunction(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_isCFunction(Lcom/luajava/CPtr;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFunction(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_isFunction(Lcom/luajava/CPtr;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJavaFunction(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 931
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_isJavaFunction(Lcom/luajava/CPtr;I)Z

    move-result v0

    return v0
.end method

.method public isNil(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_isNil(Lcom/luajava/CPtr;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNone(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 402
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_isNone(Lcom/luajava/CPtr;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoneOrNil(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 407
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_isNoneOrNil(Lcom/luajava/CPtr;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumber(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_isNumber(Lcom/luajava/CPtr;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isObject(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 901
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_isObject(Lcom/luajava/CPtr;I)Z

    move-result v0

    return v0
.end method

.method public isString(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_isString(Lcom/luajava/CPtr;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTable(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_isTable(Lcom/luajava/CPtr;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThread(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_isThread(Lcom/luajava/CPtr;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserdata(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_isUserdata(Lcom/luajava/CPtr;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lessthan(II)I
    .locals 1
    .param p1, "idx1"    # I
    .param p2, "idx2"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_lessthan(Lcom/luajava/CPtr;II)I

    move-result v0

    return v0
.end method

.method public newTable()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_newTable(Lcom/luajava/CPtr;)V

    .line 538
    return-void
.end method

.method public newThread()Lcom/luajava/LuaState;
    .locals 2

    .prologue
    .line 306
    new-instance v0, Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v1}, Lcom/luajava/LuaState;->_newthread(Lcom/luajava/CPtr;)Lcom/luajava/CPtr;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaState;-><init>(Lcom/luajava/CPtr;)V

    .line 307
    .local v0, "l":Lcom/luajava/LuaState;
    invoke-static {v0}, Lcom/luajava/LuaStateFactory;->insertLuaState(Lcom/luajava/LuaState;)I

    .line 308
    return-object v0
.end method

.method public next(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 623
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_next(Lcom/luajava/CPtr;I)I

    move-result v0

    return v0
.end method

.method public objLen(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_objlen(Lcom/luajava/CPtr;I)I

    move-result v0

    return v0
.end method

.method public openBase()V
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_openBase(Lcom/luajava/CPtr;)V

    .line 802
    return-void
.end method

.method public openDebug()V
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_openDebug(Lcom/luajava/CPtr;)V

    .line 826
    return-void
.end method

.method public openIo()V
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_openIo(Lcom/luajava/CPtr;)V

    .line 810
    return-void
.end method

.method public openLibs()V
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_openLibs(Lcom/luajava/CPtr;)V

    .line 834
    return-void
.end method

.method public openMath()V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_openMath(Lcom/luajava/CPtr;)V

    .line 822
    return-void
.end method

.method public openOs()V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_openOs(Lcom/luajava/CPtr;)V

    .line 814
    return-void
.end method

.method public openPackage()V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_openPackage(Lcom/luajava/CPtr;)V

    .line 830
    return-void
.end method

.method public openString()V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_openString(Lcom/luajava/CPtr;)V

    .line 818
    return-void
.end method

.method public openTable()V
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_openTable(Lcom/luajava/CPtr;)V

    .line 806
    return-void
.end method

.method public pcall(III)I
    .locals 1
    .param p1, "nArgs"    # I
    .param p2, "nResults"    # I
    .param p3, "errFunc"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/luajava/LuaState;->_pcall(Lcom/luajava/CPtr;III)I

    move-result v0

    return v0
.end method

.method public pop(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 780
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_pop(Lcom/luajava/CPtr;I)V

    .line 781
    return-void
.end method

.method public pushBoolean(Z)V
    .locals 2
    .param p1, "bool"    # Z

    .prologue
    .line 505
    iget-object v1, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/luajava/LuaState;->_pushBoolean(Lcom/luajava/CPtr;I)V

    .line 506
    return-void

    .line 505
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pushInteger(I)V
    .locals 1
    .param p1, "integer"    # I

    .prologue
    .line 484
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_pushInteger(Lcom/luajava/CPtr;I)V

    .line 485
    return-void
.end method

.method public pushJavaFunction(Lcom/luajava/JavaFunction;)V
    .locals 1
    .param p1, "func"    # Lcom/luajava/JavaFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 921
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_pushJavaFunction(Lcom/luajava/CPtr;Lcom/luajava/JavaFunction;)V

    .line 922
    return-void
.end method

.method public pushJavaObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 912
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_pushJavaObject(Lcom/luajava/CPtr;Ljava/lang/Object;)V

    .line 913
    return-void
.end method

.method public pushNil()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_pushNil(Lcom/luajava/CPtr;)V

    .line 475
    return-void
.end method

.method public pushNumber(D)V
    .locals 1
    .param p1, "db"    # D

    .prologue
    .line 479
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_pushNumber(Lcom/luajava/CPtr;D)V

    .line 480
    return-void
.end method

.method public pushObjectValue(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 942
    if-nez p1, :cond_0

    .line 944
    invoke-virtual {p0}, Lcom/luajava/LuaState;->pushNil()V

    .line 977
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 946
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v3, p1, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 948
    check-cast v0, Ljava/lang/Boolean;

    .line 949
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pushBoolean(Z)V

    goto :goto_0

    .line 951
    .end local v0    # "bool":Ljava/lang/Boolean;
    :cond_1
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_2

    .line 953
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    goto :goto_0

    .line 955
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 957
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 959
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v3, p1, Lcom/luajava/JavaFunction;

    if-eqz v3, :cond_4

    move-object v1, p1

    .line 961
    check-cast v1, Lcom/luajava/JavaFunction;

    .line 962
    .local v1, "func":Lcom/luajava/JavaFunction;
    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->pushJavaFunction(Lcom/luajava/JavaFunction;)V

    goto :goto_0

    .line 964
    .end local v1    # "func":Lcom/luajava/JavaFunction;
    :cond_4
    instance-of v3, p1, Lcom/luajava/LuaObject;

    if-eqz v3, :cond_5

    move-object v2, p1

    .line 966
    check-cast v2, Lcom/luajava/LuaObject;

    .line 967
    .local v2, "ref":Lcom/luajava/LuaObject;
    invoke-virtual {v2}, Lcom/luajava/LuaObject;->push()V

    goto :goto_0

    .line 969
    .end local v2    # "ref":Lcom/luajava/LuaObject;
    :cond_5
    instance-of v3, p1, [B

    if-eqz v3, :cond_6

    .line 971
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushString([B)V

    goto :goto_0

    .line 975
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public pushString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 489
    if-nez p1, :cond_0

    .line 490
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_pushNil(Lcom/luajava/CPtr;)V

    .line 493
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_pushString(Lcom/luajava/CPtr;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushString([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 497
    if-nez p1, :cond_0

    .line 498
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_pushNil(Lcom/luajava/CPtr;)V

    .line 501
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    array-length v1, p1

    invoke-direct {p0, v0, p1, v1}, Lcom/luajava/LuaState;->_pushString(Lcom/luajava/CPtr;[BI)V

    goto :goto_0
.end method

.method public pushValue(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_pushValue(Lcom/luajava/CPtr;I)V

    .line 326
    return-void
.end method

.method public rawGet(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 522
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_rawGet(Lcom/luajava/CPtr;I)V

    .line 523
    return-void
.end method

.method public rawGetI(II)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "n"    # I

    .prologue
    .line 527
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_rawGetI(Lcom/luajava/CPtr;II)V

    .line 528
    return-void
.end method

.method public rawSet(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 565
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_rawSet(Lcom/luajava/CPtr;I)V

    .line 566
    return-void
.end method

.method public rawSetI(II)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "n"    # I

    .prologue
    .line 570
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_rawSetI(Lcom/luajava/CPtr;II)V

    .line 571
    return-void
.end method

.method public rawequal(II)I
    .locals 1
    .param p1, "idx1"    # I
    .param p2, "idx2"    # I

    .prologue
    .line 427
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_rawequal(Lcom/luajava/CPtr;II)I

    move-result v0

    return v0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_remove(Lcom/luajava/CPtr;I)V

    .line 331
    return-void
.end method

.method public replace(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_replace(Lcom/luajava/CPtr;I)V

    .line 341
    return-void
.end method

.method public resume(I)I
    .locals 1
    .param p1, "nArgs"    # I

    .prologue
    .line 603
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_resume(Lcom/luajava/CPtr;I)I

    move-result v0

    return v0
.end method

.method public setFEnv(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 582
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_setFEnv(Lcom/luajava/CPtr;I)I

    move-result v0

    return v0
.end method

.method public setField(ILjava/lang/String;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "k"    # Ljava/lang/String;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1, p2}, Lcom/luajava/LuaState;->_setField(Lcom/luajava/CPtr;ILjava/lang/String;)V

    .line 561
    return-void
.end method

.method public declared-synchronized setGlobal(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 795
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_setGlobal(Lcom/luajava/CPtr;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    monitor-exit p0

    return-void

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMetaTable(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 576
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_setMetaTable(Lcom/luajava/CPtr;I)I

    move-result v0

    return v0
.end method

.method public setTable(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 555
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_setTable(Lcom/luajava/CPtr;I)V

    .line 556
    return-void
.end method

.method public setTop(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_setTop(Lcom/luajava/CPtr;I)V

    .line 321
    return-void
.end method

.method public status()I
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0}, Lcom/luajava/LuaState;->_status(Lcom/luajava/CPtr;)I

    move-result v0

    return v0
.end method

.method public strLen(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 457
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_strlen(Lcom/luajava/CPtr;I)I

    move-result v0

    return v0
.end method

.method public toBoolean(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_toBoolean(Lcom/luajava/CPtr;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toInteger(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_toInteger(Lcom/luajava/CPtr;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized toJavaObject(I)Ljava/lang/Object;
    .locals 4
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    .prologue
    .line 987
    monitor-enter p0

    const/4 v0, 0x0

    .line 989
    .local v0, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 991
    new-instance v0, Ljava/lang/Boolean;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->toBoolean(I)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 993
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->type(I)I

    move-result v1

    sget-object v2, Lcom/luajava/LuaState;->LUA_TSTRING:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 995
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "obj":Ljava/lang/String;
    goto :goto_0

    .line 997
    .local v0, "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isFunction(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 999
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    .local v0, "obj":Lcom/luajava/LuaObject;
    goto :goto_0

    .line 1001
    .local v0, "obj":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isTable(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1003
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    .local v0, "obj":Lcom/luajava/LuaObject;
    goto :goto_0

    .line 1005
    .local v0, "obj":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->type(I)I

    move-result v1

    sget-object v2, Lcom/luajava/LuaState;->LUA_TNUMBER:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 1007
    new-instance v0, Ljava/lang/Double;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    .local v0, "obj":Ljava/lang/Double;
    goto :goto_0

    .line 1009
    .local v0, "obj":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isUserdata(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1011
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isObject(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1013
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getObjectFromUserdata(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1017
    :cond_6
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    .local v0, "obj":Lcom/luajava/LuaObject;
    goto :goto_0

    .line 1020
    .local v0, "obj":Ljava/lang/Object;
    :cond_7
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isNil(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1022
    const/4 v0, 0x0

    goto :goto_0

    .line 987
    .end local v0    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toNumber(I)D
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 437
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_toNumber(Lcom/luajava/CPtr;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_toString(Lcom/luajava/CPtr;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toThread(I)Lcom/luajava/LuaState;
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 467
    new-instance v0, Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v1, p1}, Lcom/luajava/LuaState;->_toThread(Lcom/luajava/CPtr;I)Lcom/luajava/CPtr;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaState;-><init>(Lcom/luajava/CPtr;)V

    return-object v0
.end method

.method public type(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_type(Lcom/luajava/CPtr;I)I

    move-result v0

    return v0
.end method

.method public typeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "tp"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_typeName(Lcom/luajava/CPtr;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xmove(Lcom/luajava/LuaState;I)V
    .locals 2
    .param p1, "to"    # Lcom/luajava/LuaState;
    .param p2, "n"    # I

    .prologue
    .line 350
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    iget-object v1, p1, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, v1, p2}, Lcom/luajava/LuaState;->_xmove(Lcom/luajava/CPtr;Lcom/luajava/CPtr;I)V

    .line 351
    return-void
.end method

.method public yield(I)I
    .locals 1
    .param p1, "nResults"    # I

    .prologue
    .line 598
    iget-object v0, p0, Lcom/luajava/LuaState;->luaState:Lcom/luajava/CPtr;

    invoke-direct {p0, v0, p1}, Lcom/luajava/LuaState;->_yield(Lcom/luajava/CPtr;I)I

    move-result v0

    return v0
.end method
