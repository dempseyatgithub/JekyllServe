#!/bin/sh

if [ "$USE_BUNDLE_EXEC" = "1" ] ; then
	BUNDLE_EXEC="bundle exec"
fi

if [ "$INCREMENTAL" = "1" ] ; then
	INCREMENTAL_FLAG="--incremental"
fi

if [ "$OPEN_URL" = "1" ] ; then
	OPEN_URL_FLAG="--open-url"
fi

if [ "$FUTURE" = "1" ] ; then
	FUTURE_FLAG="--future"
fi

if [ "$DRAFTS" = "1" ] ; then
	DRAFTS_FLAG="--drafts"
fi

if [ "$UNPUBLISHED" = "1" ] ; then
	UNPUBLISHED_FLAG="--unpublished"
fi

if [ "$VERBOSE" = "1" ] ; then
	VERBOSE_FLAG="--verbose"
	echo "$VERBOSE_FLAG"
fi

if [ "$STRICT_FRONT_MATTER" = "1" ] ; then
	STRICT_FRONT_MATTER_FLAG="--strict_front_matter"
fi

if [ "$SAFE" = "1" ] ; then
	SAFE_FLAG="--safe"
fi

if [ "$TRACE" = "1" ] ; then
	TRACE_FLAG="--trace"
fi

if [ -n "$HOST" ] ; then
	if [[ $HOST = *" "* ]]; then
  		echo "WARNING: Hostname '"$HOST"' contains spaces. Using localhost instead."
	else
		HOST_FLAG="--host"
		HOST_VALUE=$HOST
	fi
fi

if [ -n "$PORT" ] ; then
	if [[ $PORT = *" "* ]]; then
  		echo "WARNING: Port '"$PORT"' contains spaces. Using port 4000 instead."
	else
		PORT_FLAG="--port"
		PORT_VALUE=$PORT
	fi
fi

if [ "$NOVA_TASK_NAME" = "run" ] ; then
	$BUNDLE_EXEC jekyll serve $HOST_FLAG $HOST_VALUE $PORT_FLAG $PORT_VALUE $INCREMENTAL_FLAG $OPEN_URL_FLAG $FUTURE_FLAG $DRAFTS_FLAG $UNPUBLISHED_FLAG $VERBOSE_FLAG $STRICT_FRONT_MATTER_FLAG $SAFE_FLAG $TRACE_FLAG $CUSTOM_ARGS
fi

if [ "$NOVA_TASK_NAME" = "build" ] ; then
	$BUNDLE_EXEC jekyll build $INCREMENTAL_FLAG $FUTURE_FLAG $DRAFTS_FLAG $UNPUBLISHED_FLAG $VERBOSE_FLAG $STRICT_FRONT_MATTER_FLAG $SAFE_FLAG $TRACE_FLAG $CUSTOM_ARGS
fi

if [ "$NOVA_TASK_NAME" = "clean" ] ; then
	$BUNDLE_EXEC jekyll clean $CUSTOM_ARGS
fi

